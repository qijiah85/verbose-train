# 自有 Agent 技能

本目录存放可被 Agent 加载的自有技能（每目录一个 `SKILL.md`）。

按生命周期查看完整地图（含 Superpowers 与 planned）：[`../catalogs/sdlc/`](../catalogs/sdlc/)。

## 索引

| 技能 | 阶段 | 说明 | 状态 |
|------|------|------|------|
| [using-sdlc-skills](./using-sdlc-skills/) | 元 | 任务开始时按阶段路由 | active |
| [gathering-requirements](./gathering-requirements/) | 需求 | 范围、故事、验收标准 | active |
| [designing-architecture](./designing-architecture/) | 设计 | 系统结构与技术取舍 | active |
| [designing-apis](./designing-apis/) | 设计 | API 契约与错误模型 | active |
| [preparing-releases](./preparing-releases/) | 发布 | 发版就绪与回滚 | active |
| [handling-incidents](./handling-incidents/) | 运维 | 线上故障响应与复盘 | active |
| [karpathy-guidelines](./karpathy-guidelines/) | 偏好 | 编码姿态：简洁、精准、可验证 | active |

## 说明

- **流程技能**：上表除「偏好」外，均为阶段流程。
- **偏好技能**：可选叠加，不替代需求/设计/发布等流程。
- **外部技能**：不放在本目录；见 [`../catalogs/superpowers/`](../catalogs/superpowers/)。
