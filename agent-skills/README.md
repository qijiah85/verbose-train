# Agent 技能（Agent Skills）

存放可被 AI Agent 加载的技能包。每个技能是一个目录，入口文件固定为 `SKILL.md`。

本仓库技能按**软件工程全生命周期**组织；阶段权威地图见 [`catalogs/sdlc/`](./catalogs/sdlc/)。

## 目录结构

```text
agent-skills/
├── README.md
├── skills/           # 正式技能（可被引用/分发）
│   └── <skill-name>/
│       ├── SKILL.md  # 必需入口
│       └── ...       # 可选辅助文件
├── catalogs/         # 外部方法论索引 + SDLC 阶段地图
│   ├── sdlc/
│   └── superpowers/
└── templates/        # 新建技能时使用的模板
    └── SKILL.md
```

## 技能约定

| 项目 | 规则 |
|------|------|
| 目录名 | `kebab-case`，与 frontmatter `name` 一致 |
| 入口文件 | 必须为 `SKILL.md` |
| `description` | 说明何时用，并包含触发关键词 |
| 辅助文件 | 仅在需要时添加，并在 `SKILL.md` 中引用 |
| 阶段登记 | 新增流程技能后更新 [`catalogs/sdlc/`](./catalogs/sdlc/) |

详细规范见 [`../docs/naming-conventions.md`](../docs/naming-conventions.md) 与 [`../docs/documentation-style-guide.md`](../docs/documentation-style-guide.md)。

## 新建技能

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

## 技能索引（按阶段）

| 阶段 | 技能 | 说明 | 状态 |
|------|------|------|------|
| 元 | [using-sdlc-skills](./skills/using-sdlc-skills/) | 按任务路由到 SDLC 阶段技能 | active |
| 需求 | [gathering-requirements](./skills/gathering-requirements/) | 澄清范围、故事与验收标准 | active |
| 设计 | [designing-architecture](./skills/designing-architecture/) | 系统边界、模块与技术取舍 | active |
| 设计 | [designing-apis](./skills/designing-apis/) | 接口契约、错误模型与兼容策略 | active |
| 发布 | [preparing-releases](./skills/preparing-releases/) | 版本、changelog、回滚与上线检查 | active |
| 运维 | [handling-incidents](./skills/handling-incidents/) | 故障止血、沟通与复盘 | active |
| 偏好 | [karpathy-guidelines](./skills/karpathy-guidelines/) | 减少 LLM 常见编码失误（可选横切） | active |

计划 → 实现 → 质量等中段流程见 [`catalogs/superpowers/`](./catalogs/superpowers/)。  
演示用途的示例技能见 [`../examples/agent-skills/`](../examples/agent-skills/)。
