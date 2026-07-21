# Superpowers 技能目录

本目录是 [obra/superpowers](https://github.com/obra/superpowers) 的**索引与使用说明**，不是技能正文的完整镜像。

请优先通过各宿主的插件市场安装 Superpowers，以获得 SessionStart hook 与更新。详见 [`../../../docs/superpowers.md`](../../../docs/superpowers.md)。

## 工作流顺序

1. `using-superpowers` — 会话启动：有技能必须先用  
2. `brainstorming` — 创意/功能工作前：澄清与设计批准  
3. `using-git-worktrees` — 隔离实现环境  
4. `writing-plans` — 写出可执行计划  
5. `subagent-driven-development` 或 `executing-plans` — 执行计划  
6. `test-driven-development` — 实现时强制红绿重构  
7. `requesting-code-review` / `receiving-code-review` — 审查与反馈  
8. `finishing-a-development-branch` — 收尾集成  

## 技能一览

上游路径：`https://github.com/obra/superpowers/tree/main/skills/<name>`

### 元 / 启动

| 技能 | 何时使用 |
|------|----------|
| [using-superpowers](https://github.com/obra/superpowers/tree/main/skills/using-superpowers) | 任何会话开始：如何发现并强制使用技能 |
| [writing-skills](https://github.com/obra/superpowers/tree/main/skills/writing-skills) | 创建、修改或验证新技能 |

### 设计与计划

| 技能 | 何时使用 |
|------|----------|
| [brainstorming](https://github.com/obra/superpowers/tree/main/skills/brainstorming) | 任何创造性工作之前（功能、组件、行为变更） |
| [writing-plans](https://github.com/obra/superpowers/tree/main/skills/writing-plans) | 已有规格、动手写代码之前 |
| [executing-plans](https://github.com/obra/superpowers/tree/main/skills/executing-plans) | 在独立会话中按计划分批执行并设检查点 |

### 实现与编排

| 技能 | 何时使用 |
|------|----------|
| [test-driven-development](https://github.com/obra/superpowers/tree/main/skills/test-driven-development) | 实现功能或修 bug，写实现代码之前 |
| [subagent-driven-development](https://github.com/obra/superpowers/tree/main/skills/subagent-driven-development) | 当前会话内按任务派生子代理执行计划 |
| [dispatching-parallel-agents](https://github.com/obra/superpowers/tree/main/skills/dispatching-parallel-agents) | 2+ 个无共享状态的独立任务可并行时 |
| [using-git-worktrees](https://github.com/obra/superpowers/tree/main/skills/using-git-worktrees) | 需要隔离工作区或执行计划前 |

### 质量与收尾

| 技能 | 何时使用 |
|------|----------|
| [systematic-debugging](https://github.com/obra/superpowers/tree/main/skills/systematic-debugging) | 遇到 bug、测试失败或异常行为，提出修复之前 |
| [verification-before-completion](https://github.com/obra/superpowers/tree/main/skills/verification-before-completion) | 声称完成/修复/通过之前，必须先跑验证并看输出 |
| [requesting-code-review](https://github.com/obra/superpowers/tree/main/skills/requesting-code-review) | 任务完成、大功能落地或合并前 |
| [receiving-code-review](https://github.com/obra/superpowers/tree/main/skills/receiving-code-review) | 收到审查意见、动手改之前（需核实而非盲从） |
| [finishing-a-development-branch](https://github.com/obra/superpowers/tree/main/skills/finishing-a-development-branch) | 实现完成且测试通过，决定 merge / PR / 保留 / 丢弃 |

## 与本库自有技能

正式、可本地加载的自有技能放在 [`../../skills/`](../../skills/)。  
目录型外部方法论（如 Superpowers）放在 `catalogs/`，避免与可分发 `SKILL.md` 包混淆。

## 来源与许可

见 [`SOURCE.md`](./SOURCE.md)。
