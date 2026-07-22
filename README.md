# agent-skills-and-specs

**把软件工程全生命周期（需求 → 设计 → 实现 → 部署 → 运维）封装为可加载的 AI Skills；规范给人读，技能给 Agent 用。**

GitHub 仓库名可能是自动生成的（如 `verbose-train`）；本项目的实际用途以下文为准。

## 这个仓库是干什么的

这是一个**软件工程全生命周期 AI 技能集**知识库，集中存放三类内容：

1. **Agent 技能（Agent Skills）** — 可被 Cursor / Claude 等编码 Agent 加载的 `SKILL.md`，按 SDLC 阶段组织执行流程。
2. **规范文档（Specifications）** — 团队约定：提交信息、API、架构、流程等，主要给人查阅与对齐；技能可引用它们。
3. **外部方法论目录（Catalogs）** — 如 Superpowers 的索引（不整包拷贝），以及本库的 [SDLC 阶段地图](./agent-skills/catalogs/sdlc/)。

另有**本仓库说明**（命名、风格）与**示例**，方便新增内容。个人习惯类技能（如编码姿态）放在「偏好」轨，与流程技能区分。

**成功标准：** 后来的人能在 1 分钟内搞清「当前任务属于哪一阶段、该加载哪个技能、规范往哪放」，而不是把本仓库当成应用或框架。

## 生命周期速览

| 阶段 | 主要技能 | 来源 |
|------|----------|------|
| 元 / 路由 | [`using-sdlc-skills`](./agent-skills/skills/using-sdlc-skills/) | 自有 |
| 需求 | [`gathering-requirements`](./agent-skills/skills/gathering-requirements/) | 自有 |
| 设计 | [`designing-architecture`](./agent-skills/skills/designing-architecture/)、[`designing-apis`](./agent-skills/skills/designing-apis/) | 自有 |
| 计划 → 实现 → 审查 | brainstorming、writing-plans、TDD、code-review… | [Superpowers](./docs/superpowers.md) |
| 发布 | [`preparing-releases`](./agent-skills/skills/preparing-releases/) | 自有 |
| 运维 | [`handling-incidents`](./agent-skills/skills/handling-incidents/) | 自有 |
| 偏好（横切） | [`karpathy-guidelines`](./agent-skills/skills/karpathy-guidelines/) | 自有 |

完整对照见 [`docs/sdlc-overview.md`](./docs/sdlc-overview.md) 与 [`agent-skills/catalogs/sdlc/`](./agent-skills/catalogs/sdlc/)。

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
| 例子 | [Git 提交信息格式](./specifications/coding/git-commit-message-style-guide.md) | [gathering-requirements](./agent-skills/skills/gathering-requirements/) | [SDLC 地图](./agent-skills/catalogs/sdlc/)、[Superpowers](./agent-skills/catalogs/superpowers/) |

## 仓库结构

```text
.
├── specifications/   # 规范文档（给人对齐的标准）
├── agent-skills/
│   ├── skills/       # 自有 Agent 技能（可加载）
│   ├── catalogs/     # 外部方法论 + SDLC 阶段地图
│   └── templates/    # 新建技能模板
├── docs/             # 本仓库怎么用（SDLC 概览、命名、Superpowers 等）
└── examples/         # 可复制的示例，不是现行生产规范
```

## 我该怎么用

1. 先读 [`docs/getting-started.md`](./docs/getting-started.md)
2. 按阶段选技能：[`docs/sdlc-overview.md`](./docs/sdlc-overview.md)
3. 命名与写作：[`docs/naming-conventions.md`](./docs/naming-conventions.md)、[`docs/documentation-style-guide.md`](./docs/documentation-style-guide.md)
4. 中段工程流程（计划/TDD/审查）：[`docs/superpowers.md`](./docs/superpowers.md)

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

新增后请在 [`agent-skills/catalogs/sdlc/`](./agent-skills/catalogs/sdlc/) 与技能 README 索引中登记所属阶段。

## 命名速查

- 目录 / 文件：`kebab-case`
- 技能入口：固定为 `SKILL.md`
- 正文默认简体中文；命令、路径、专有名词保留英文

完整规则见 [`docs/naming-conventions.md`](./docs/naming-conventions.md)。

## 贡献

见 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。提交前确认：放对目录、符合命名、遵循风格、必要时更新对应索引与 SDLC 地图。

## License

本项目采用 [Apache License 2.0](./LICENSE)。  
仓库内引用的外部项目（如 Superpowers、Karpathy guidelines）各自保留其原许可；详见各目录下的来源说明。
