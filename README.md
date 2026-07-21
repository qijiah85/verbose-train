# agent-skills-and-specs

统一存放**规范文档（specifications）**与 **Agent 技能（agent skills）** 的知识库仓库。

目标：用清晰的命名约定和稳定的目录结构，让规范与技能可发现、可复用、可维护。

## 仓库结构

```text
.
├── specifications/   # 各类规范文档（编码、API、架构、流程等）
├── agent-skills/     # Agent 技能定义与技能模板
├── docs/             # 项目说明、命名规范、文档风格指南
└── examples/         # 示例规范与示例技能（可直接复制改造）
```

| 目录 | 用途 |
|------|------|
| [`specifications/`](./specifications/) | 存放长期生效的规范与标准 |
| [`agent-skills/`](./agent-skills/) | 存放可被 Agent 加载的技能（`SKILL.md`） |
| [`docs/`](./docs/) | 本仓库自身的使用说明与写作规范 |
| [`examples/`](./examples/) | 完整示例，降低首次贡献门槛 |

## 快速开始

1. 阅读 [`docs/getting-started.md`](./docs/getting-started.md)
2. 了解命名与分类规则：[`docs/naming-conventions.md`](./docs/naming-conventions.md)
3. 按文档风格撰写内容：[`docs/documentation-style-guide.md`](./docs/documentation-style-guide.md)
4. 从 [`examples/`](./examples/) 或各目录下的 `templates/` 复制模板开始编写

### 新增一条规范

```bash
cp specifications/templates/specification-template.md \
   specifications/coding/my-coding-standard.md
```

### 新增一个 Agent 技能

```bash
mkdir -p agent-skills/skills/my-skill-name
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/my-skill-name/SKILL.md
```

## 命名速查

- **目录**：`kebab-case`（如 `api-design`、`code-review`）
- **规范文件**：`kebab-case.md`（如 `rest-api-guidelines.md`）
- **技能目录**：`kebab-case/`，入口文件固定为 `SKILL.md`
- **语言**：正文默认简体中文；专有名词、命令、路径保持原文

完整规则见 [`docs/naming-conventions.md`](./docs/naming-conventions.md)。

## 贡献

请阅读 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。提交前确认：

- 内容放在正确分类目录
- 文件名符合命名规范
- 遵循文档风格指南
- 如有必要，在对应 `README.md` 中补充索引条目

## License

本项目采用 [Apache License 2.0](./LICENSE)。
