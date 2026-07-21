# Superpowers 使用指南

[Superpowers](https://github.com/obra/superpowers) 是一套以 Agent Skills 形式交付的**软件工程方法论**（MIT）。本仓库**不整包拷贝**其 `SKILL.md` 正文，而是提供安装说明、工作流索引与技能目录，避免与上游脱节。

技能目录见：[`../agent-skills/catalogs/superpowers/`](../agent-skills/catalogs/superpowers/)

## 为何推荐插件安装而非 vendoring

| 方式 | 适用场景 |
|------|----------|
| **插件 / marketplace 安装（推荐）** | 日常开发：自动 SessionStart hook、跨工具更新 |
| **本仓库目录索引** | 查阅有哪些技能、何时触发、与本库自有技能如何配合 |
| **整包拷贝到 `skills/`** | 不推荐：体量大、更新快、依赖 hook，易过时 |

## 安装（按宿主）

### Cursor

在 Agent 对话中：

```text
/add-plugin superpowers
```

或在插件市场搜索 `superpowers`。

### Claude Code

官方市场：

```bash
/plugin install superpowers@claude-plugins-official
```

或 Superpowers 市场：

```bash
/plugin marketplace add obra/superpowers-marketplace
/plugin install superpowers@superpowers-marketplace
```

### 其他宿主

Codex、Copilot CLI、OpenCode、Pi、Gemini 等安装方式见上游 [README](https://github.com/obra/superpowers#installation)。多宿主需**分别安装**。

## 标准工作流

```text
1. brainstorming          澄清意图 → 多方案 → 分段确认设计（未批准不写代码）
2. using-git-worktrees    隔离工作区 / 新分支
3. writing-plans          拆成可验证的小任务
4. subagent-driven-development 或 executing-plans
                          按任务执行（可带子代理审查或人工检查点）
5. test-driven-development（贯穿实现）红 → 绿 → 重构
6. requesting-code-review 对照计划审查
7. finishing-a-development-branch  合并 / PR / 保留 / 丢弃
```

旁路：`systematic-debugging`、`verification-before-completion`、`dispatching-parallel-agents`、`receiving-code-review`。  
元技能：`using-superpowers`（会话启动强制「先用技能」）、`writing-skills`（编写新技能）。

## 与本仓库技能的关系

| 内容 | 位置 | 角色 |
|------|------|------|
| Superpowers | 插件安装 + [catalog](../agent-skills/catalogs/superpowers/) | 规定性工程流程 |
| 自有技能（如 `karpathy-guidelines`） | `agent-skills/skills/` | 项目/团队自维护技能 |
| 规范文档 | `specifications/` | 长期标准，非运行时技能 |

**配合建议：** Superpowers 管「怎么做项目」；自有技能（如 Karpathy 四原则）管「编码姿态」。两者可同时启用。

## 哲学摘要

- Test-Driven Development — 先写测试
- Systematic over ad-hoc — 流程优于猜测
- Complexity reduction — 以简单为默认目标
- Evidence over claims — 声称完成前必须有验证输出

## 遥测说明

上游 brainstorming 的可选 Visual Companion 可能加载 Logo 以统计版本使用量（不含项目内容）。可设 `SUPERPOWERS_DISABLE_TELEMETRY` 关闭；详见上游 README。

## 参考

- 上游仓库：https://github.com/obra/superpowers
- 发布说明：https://blog.fsck.com/2025/10/09/superpowers/
- 本库锁定参考版本见 catalog 内 [`SOURCE.md`](../agent-skills/catalogs/superpowers/SOURCE.md)
