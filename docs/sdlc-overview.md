# 软件工程全生命周期（SDLC）技能概览

本仓库把软件工程从**需求到运维**拆成可被 Agent 加载的技能，并与外部方法论（主要是 Superpowers）拼成一条完整路径。

## 怎么用

1. 判断当前任务落在哪一阶段（下表）
2. 优先加载对应**自有技能**；若标注 Superpowers，则按 [`superpowers.md`](./superpowers.md) 安装插件后使用
3. 写代码时可选加载**偏好**技能（如 `karpathy-guidelines`），不替代阶段流程
4. 不确定阶段时，先读 [`using-sdlc-skills`](../agent-skills/skills/using-sdlc-skills/)

权威对照表（含 planned 占位）：[`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)

## 阶段与技能

```text
需求 → 设计 → 计划 → 实现 → 质量 → 发布 → 运维
 ↑                                    ↑
 自有缺口技能                    自有缺口技能
         └──── Superpowers（中段）────┘
              偏好技能横切「实现」姿态
```

| 阶段 | 技能 | 类型 | 何时用 |
|------|------|------|--------|
| 元 | [using-sdlc-skills](../agent-skills/skills/using-sdlc-skills/) | 自有 | 开任务、选流程、对齐阶段 |
| 需求 | [gathering-requirements](../agent-skills/skills/gathering-requirements/) | 自有 | 澄清范围、用户故事、验收标准 |
| 设计 | [designing-architecture](../agent-skills/skills/designing-architecture/) | 自有 | 系统边界、模块、技术选型 |
| 设计 | [designing-apis](../agent-skills/skills/designing-apis/) | 自有 | 接口契约、错误模型、版本策略 |
| 设计 / 计划 | brainstorming、writing-plans | Superpowers | 创意澄清、可执行计划 |
| 实现 | TDD、subagent / executing-plans、git-worktrees | Superpowers | 隔离实现、红绿重构、按计划推进 |
| 质量 | systematic-debugging、verification、code-review | Superpowers | 排障、验证、审查 |
| 发布 | [preparing-releases](../agent-skills/skills/preparing-releases/) | 自有 | 版本、变更说明、回滚与发布检查 |
| 运维 | [handling-incidents](../agent-skills/skills/handling-incidents/) | 自有 | 故障响应、缓解、复盘 |
| 偏好 | [karpathy-guidelines](../agent-skills/skills/karpathy-guidelines/) | 自有 · 可选 | 编码时减少过度设计与盲目修改 |

## 三轨说明

| 轨 | 含义 | 例子 |
|----|------|------|
| **流程技能** | 规定某阶段「先做什么、禁做什么」 | `gathering-requirements`、`preparing-releases` |
| **外部方法论** | 本库只建索引，正文由插件提供 | Superpowers |
| **偏好技能** | 个人/团队习惯，横切实现，非全员强制流程 | `karpathy-guidelines` |

## 与规范文档的关系

- **技能**：运行时约束 Agent 行为（步骤、红线、验收）
- **规范**（`specifications/`）：长期标准，给人对齐；技能步骤中可引用（如提交信息格式）

两者互补：规范回答「我们约定什么」，技能回答「此刻 Agent 怎么做」。

## 扩展原则

- Superpowers 已覆盖的中段流程：**不要**再拷一份同名技能进 `skills/`
- 新阶段缺口：在 `agent-skills/skills/` 新增，并登记到 [SDLC catalog](../agent-skills/catalogs/sdlc/)
- 个人喜好：标记为偏好轨，避免写进强制流程技能的「红线」除非团队明确采用
