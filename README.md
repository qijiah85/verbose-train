# agent-skills-and-specs

**给人读的规范，和给 Agent 用的技能，都放在这里。**

GitHub 仓库名可能是自动生成的（如 `verbose-train`）；本项目的实际用途以下文为准。

## 这个仓库是干什么的

这是一个**知识库**，用来集中存放两类内容：

1. **规范文档（Specifications）** — 团队约定：提交信息怎么写、API 怎么设计、流程怎么走等，主要给人查阅与对齐。
2. **Agent 技能（Agent Skills）** — 可被 Cursor / Claude 等编码 Agent 加载的 `SKILL.md`，用来约束或指导 AI 怎么干活。

另外会放一些**本仓库自己的说明**（命名、写作风格）和**示例**，方便照着新增内容。

**成功标准：** 后来的人能在 1 分钟内搞清「该往哪放文件、该装什么插件」，而不是把本仓库当成应用或框架。

## 这个仓库不是干什么的

| 不是 | 说明 |
|------|------|
| ❌ 可运行的应用 / 服务 | 没有业务后端、前端产品或部署流水线 |
| ❌ SDK / 框架 / 库 | 不对外提供可 `import` 的代码包 |
| ❌ Agent 运行时或插件市场 | 不负责启动模型；技能要拷到 Agent 支持的目录，或按各工具自己的方式安装 |
| ❌ Superpowers 本体 | [Superpowers](https://github.com/obra/superpowers) 请在 Cursor 等工具里用插件安装；本仓库只保留[说明与索引](./docs/superpowers.md) |
| ❌ 「把网上所有技能都镜像一份」 | 自有技能才放进 `agent-skills/skills/`；大型外部方法论优先用 `catalogs/` 做索引，避免全文拷贝过时 |

若你在找「能跑起来的产品」或「一键安装的 Agent 平台」，这里不是那个项目。

## 两类内容怎么区分

| | 规范 `specifications/` | 自有技能 `agent-skills/skills/` | 外部目录 `agent-skills/catalogs/` |
|--|------------------------|----------------------------------|-----------------------------------|
| 读者 | 人（也可给 Agent 当参考） | Agent（人也可读） | 人（查索引） |
| 形态 | Markdown 规范正文 | 每技能一个目录 + `SKILL.md` | 链接与使用说明，通常不含全文 |
| 例子 | [Git 提交信息格式](./specifications/coding/git-commit-message-style-guide.md) | [karpathy-guidelines](./agent-skills/skills/karpathy-guidelines/) | [Superpowers 目录](./agent-skills/catalogs/superpowers/) |

## 仓库结构

```text
.
├── specifications/   # 规范文档（给人对齐的标准）
├── agent-skills/
│   ├── skills/       # 自有 Agent 技能（可加载）
│   ├── catalogs/     # 外部方法论索引（不整包拷贝）
│   └── templates/    # 新建技能模板
├── docs/             # 本仓库怎么用（命名、风格、Superpowers 指南等）
└── examples/         # 可复制的示例，不是现行生产规范
```

## 我该怎么用

1. 先读 [`docs/getting-started.md`](./docs/getting-started.md)
2. 命名与写作：[`docs/naming-conventions.md`](./docs/naming-conventions.md)、[`docs/documentation-style-guide.md`](./docs/documentation-style-guide.md)
3. 要用 Superpowers 工作流：[`docs/superpowers.md`](./docs/superpowers.md)（插件安装，不要在本仓库里找完整技能包）

### 新增一条规范

```bash
cp specifications/templates/specification-template.md \
   specifications/coding/my-coding-standard.md
```

### 新增一个自有 Agent 技能

```bash
mkdir -p agent-skills/skills/my-skill-name
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/my-skill-name/SKILL.md
```

## 命名速查

- 目录 / 文件：`kebab-case`
- 技能入口：固定为 `SKILL.md`
- 正文默认简体中文；命令、路径、专有名词保留英文

完整规则见 [`docs/naming-conventions.md`](./docs/naming-conventions.md)。

## 贡献

见 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。提交前确认：放对目录、符合命名、遵循风格、必要时更新对应索引。

## License

本项目采用 [Apache License 2.0](./LICENSE)。  
仓库内引用的外部项目（如 Superpowers、Karpathy guidelines）各自保留其原许可；详见各目录下的来源说明。
