#!/usr/bin/env bash
# 为默认分支 main 启用 GitHub 分支保护（Ruleset）。
# 需要：仓库 Admin 权限；已登录 gh（gh auth login）。
#
# 用法：
#   ./scripts/protect-main-branch.sh
#   REPO=owner/name ./scripts/protect-main-branch.sh

set -euo pipefail

REPO="${REPO:-$(gh repo view --json nameWithOwner -q .nameWithOwner)}"
BRANCH="${BRANCH:-main}"
RULESET_NAME="${RULESET_NAME:-Protect ${BRANCH}}"

echo "Repository: $REPO"
echo "Branch:     $BRANCH"

if ! gh api "repos/$REPO" --jq '.permissions.admin' | grep -q true; then
  echo "错误：当前 gh 身份对该仓库没有 admin 权限，无法创建规则集。" >&2
  echo "请用仓库所有者账号执行：gh auth login" >&2
  exit 1
fi

# 若已存在同名 ruleset 则更新，否则创建
EXISTING_ID="$(gh api "repos/$REPO/rulesets" --jq ".[] | select(.name==\"$RULESET_NAME\") | .id" | head -n1 || true)"

PAYLOAD="$(cat <<EOF
{
  "name": "$RULESET_NAME",
  "target": "branch",
  "enforcement": "active",
  "conditions": {
    "ref_name": {
      "include": ["refs/heads/$BRANCH"],
      "exclude": []
    }
  },
  "rules": [
    { "type": "deletion" },
    { "type": "non_fast_forward" },
    {
      "type": "pull_request",
      "parameters": {
        "required_approving_review_count": 0,
        "dismiss_stale_reviews": true,
        "require_code_owner_review": false,
        "require_last_push_approval": false,
        "required_review_thread_resolution": false
      }
    }
  ]
}
EOF
)"

if [[ -n "$EXISTING_ID" ]]; then
  echo "Updating ruleset id=$EXISTING_ID ..."
  echo "$PAYLOAD" | gh api -X PUT "repos/$REPO/rulesets/$EXISTING_ID" --input -
else
  echo "Creating ruleset ..."
  echo "$PAYLOAD" | gh api -X POST "repos/$REPO/rulesets" --input -
fi

echo
echo "已启用保护：$BRANCH"
echo "- 禁止直接推送（须经 Pull Request）"
echo "- 禁止 force-push"
echo "- 禁止删除分支"
echo
echo "在网页查看：https://github.com/$REPO/settings/rules"
