# 保护默认分支（main）

本仓库默认分支是 **`main`**（没有 `master`）。应对 `main` 启用 GitHub 分支保护，避免直接推送与强制覆盖。

## 为何保护

| 风险 | 保护效果 |
|------|----------|
| 直接 `git push origin main` | 要求走 Pull Request |
| `git push --force` | 禁止非快进覆盖 |
| 误删默认分支 | 禁止删除 |

与本库「技能 + 规范知识库」流程一致：变更经 PR 审查后再合入。

## 一键启用（需仓库 Admin）

当前 Cloud Agent 的 `gh` 令牌**没有** admin 权限，无法代你创建规则。请用**仓库所有者**本机账号执行：

```bash
gh auth login   # 使用有 Admin 权限的账号
cd /path/to/verbose-train
chmod +x scripts/protect-main-branch.sh
./scripts/protect-main-branch.sh
```

脚本会创建（或更新）名为 `Protect main` 的 Repository Ruleset：

- 目标：`refs/heads/main`
- 必须通过 Pull Request 合入（审批人数默认 0，可按需在设置里改为 1）
- 禁止 force-push、禁止删除分支

## 网页手动配置

1. 打开：`https://github.com/<owner>/<repo>/settings/rules`
2. **New ruleset** → **New branch ruleset**
3. Target：`main`（或 `Include by pattern` → `main`）
4. 勾选：
   - Restrict deletions
   - Block force pushes
   - Require a pull request before merging
5. Save

经典「Branch protection rules」入口（若仍可见）：  
`Settings` → `Branches` → `Add branch protection rule` → Branch name pattern: `main`。

## 验证

```bash
# 应列出 Protect main
gh api repos/$(gh repo view -q .nameWithOwner --json nameWithOwner)/rulesets

# 直接推 main 应被拒绝（在保护生效后）
echo test >> README.md
git checkout -b probe-main-protection
# 合入仍走 PR；不要直接 push main
```

## 可选加强

在 GitHub Ruleset 中按需打开：

- Require approvals ≥ 1
- Require conversation resolution
- Require status checks（若已配置 CI）

本库当前以文档为主、无强制 CI 时，可不勾选 status checks。
