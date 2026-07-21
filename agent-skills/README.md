# Agent 技能（Agent Skills）

存放可被 AI Agent 加载的技能包。每个技能是一个目录，入口文件固定为 `SKILL.md`。

## 目录结构

```text
agent-skills/
├── README.md
├── skills/           # 正式技能（可被引用/分发）
│   └── <skill-name>/
│       ├── SKILL.md  # 必需入口
│       └── ...       # 可选辅助文件
└── templates/        # 新建技能时使用的模板
    └── SKILL.md
```

## 技能约定

| 项目 | 规则 |
|------|------|
| 目录名 | `kebab-case`，与 frontmatter `name` 一致 |
| 入口文件 | 必须为 `SKILL.md` |
| `description` | 说明做什么、何时用，并包含触发关键词 |
| 辅助文件 | 仅在需要时添加，并在 `SKILL.md` 中引用 |

详细规范见 [`../docs/naming-conventions.md`](../docs/naming-conventions.md) 与 [`../docs/documentation-style-guide.md`](../docs/documentation-style-guide.md)。

## 新建技能

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

## 技能索引

| 技能 | 说明 | 状态 |
|------|------|------|
| _暂无正式技能_ | 从模板或示例复制后在此登记 | — |

演示用途的示例技能见 [`../examples/agent-skills/`](../examples/agent-skills/)。
