# Playbook：Full SDLC（编号链式剧本）

吸收 ChatDev「阶段链」与社区「01–0N Skill 包」的可发现性：按序号执行，**正文仍在 `skills/`**，此处只做编排与门禁说明。

端到端编排技能：[`../../skills/running-sdlc-playbook/`](../../skills/running-sdlc-playbook/)。  
工件契约：[`../../../docs/sop-artifacts.md`](../../../docs/sop-artifacts.md)。

## 顺序

| 序号 | 阶段 | 加载技能 | 产出工件 ID | HITL 门禁 |
|------|------|----------|-------------|-----------|
| 01 | 路由 | [using-sdlc-skills](../../skills/using-sdlc-skills/) | 阶段声明 | 确认主阶段 |
| 02 | 需求 | [gathering-requirements](../../skills/gathering-requirements/) | `A-PRD` | 确认范围与验收 |
| 03 | 架构 | [designing-architecture](../../skills/designing-architecture/) | `A-ARCH` | 确认推荐方案 |
| 04 | 数据 | [modeling-data](../../skills/modeling-data/) | `A-DATA` | 确认实体与约束 |
| 05 | 接口 | [designing-apis](../../skills/designing-apis/) | `A-API` | 确认契约 |
| 06 | 计划→实现→质量 | Superpowers：`writing-plans` → TDD → verification / review | `A-PLAN`、`A-VERIFY` | 计划批准；验证证据 |
| 07 | 容器化 | [containerizing-applications](../../skills/containerizing-applications/) | `A-CONTAINER` | 确认构建命令 |
| 08 | CI/CD | [writing-cicd-pipelines](../../skills/writing-cicd-pipelines/) | `A-CICD` | 确认流水线范围 |
| 09 | 发布 | [preparing-releases](../../skills/preparing-releases/) | `A-RELEASE` | 确认回滚方案 |
| 10 | 运维（按需） | [handling-incidents](../../skills/handling-incidents/) | `A-INCIDENT` | 复盘改进项负责人 |

可选横切：实现阶段叠加 [karpathy-guidelines](../../skills/karpathy-guidelines/)。

## 使用方式

```text
请按 agent-skills/playbooks/full-sdlc 执行，从 02 开始（已有一句话需求）。
每完成一步停下来等我确认，再进入下一步。
```

或：

```text
使用 running-sdlc-playbook，目标：<一句话需求>
```

## 裁剪规则

- 纯 bugfix：可从 06 质量/调试切入，在日志中写 `gate=waived` 与理由  
- 已有 PRD/API：跳过已满足门禁的序号，但须指向现有工件路径  
- 无容器需求：可跳过 07–08，发布技能中声明运行方式（如托管 PaaS）
