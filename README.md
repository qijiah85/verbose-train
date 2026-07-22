# agent-skills-and-specs

**把软件工程全生命周期封装为可加载 AI Skills：SOP 工件链 + 阶段门禁 Playbook；规范给人读，技能给 Agent 用。**

GitHub 仓库名可能是自动生成的；实际用途以下文为准。

## 这个仓库是干什么的

这是面向 Cursor / Claude 等宿主的 **SDLC AI 技能集**知识库，吸收 MetaGPT（SOP 工件）、ChatDev（阶段链门禁）、OpenHands（可执行验证）、DevOpsGPT/编号 Skill 包（部署与可发现性）的优点，但**不**做成多智能体公司运行时。

内容包括：

1. **Agent Skills** — 按阶段可加载的 `SKILL.md`（含编排 playbook）
2. **SOP 工件契约** — PRD→架构/数据/API→验证→容器/CI→发布→复盘
3. **规范文档** — 团队长期标准（`specifications/`）
4. **Catalogs** — Superpowers 与社区项目索引（不整包拷贝）

**成功标准：** 1 分钟内搞清「与 MetaGPT/ChatDev 的差异、当前阶段、该产出哪份工件、该加载哪个技能」。

## 快速入口

| 我想… | 去这里 |
|------|--------|
| 跑通需求→部署全流程 | [`running-sdlc-playbook`](./agent-skills/skills/running-sdlc-playbook/) · [编号剧本](./agent-skills/playbooks/full-sdlc/) |
| 只做某一阶段 | [`using-sdlc-skills`](./agent-skills/skills/using-sdlc-skills/) · [阶段地图](./agent-skills/catalogs/sdlc/) |
| 看工件 ID 与门禁 | [`docs/sop-artifacts.md`](./docs/sop-artifacts.md) |
| 看社区项目对照 | [`docs/community-landscape.md`](./docs/community-landscape.md) |
| 中段 TDD/审查 | [`docs/superpowers.md`](./docs/superpowers.md) |

## 生命周期速览

| 阶段 | 主要技能 | 工件 |
|------|----------|------|
| 编排 | `using-sdlc-skills` / `running-sdlc-playbook` | 阶段声明 |
| 需求 | `gathering-requirements` | `A-PRD` |
| 设计 | `designing-architecture` / `modeling-data` / `designing-apis` | `A-ARCH` / `A-DATA` / `A-API` |
| 计划→质量 | Superpowers | `A-PLAN` / `A-VERIFY` |
| 部署准备 | `containerizing-applications` / `writing-cicd-pipelines` | `A-CONTAINER` / `A-CICD` |
| 发布 | `preparing-releases` | `A-RELEASE` |
| 运维 | `handling-incidents` | `A-INCIDENT` |
| 偏好 | `karpathy-guidelines` | — |

## 这个仓库不是干什么的

| 不是 | 说明 |
|------|------|
| ❌ MetaGPT/ChatDev 式多 Agent 运行时 | 不调度虚拟员工；见社区对照文档 |
| ❌ OpenHands 式沙箱产品 | 不提供 Docker socket 宿主 |
| ❌ 可运行业务应用 / SDK | 只有文档与技能 |
| ❌ Superpowers 全文镜像 | 请插件安装 |

## 仓库结构

```text
.
├── specifications/     # 人读规范
├── agent-skills/
│   ├── skills/         # 可加载技能
│   ├── playbooks/      # 编号全流程剧本
│   ├── catalogs/       # sdlc / superpowers / community
│   └── templates/      # 技能与 SOP 工件模板
├── docs/               # 概览、SOP、社区对照、Superpowers
└── examples/
```

## 我该怎么用

1. [`docs/getting-started.md`](./docs/getting-started.md)
2. [`docs/sdlc-overview.md`](./docs/sdlc-overview.md)
3. 命名/风格：[`docs/naming-conventions.md`](./docs/naming-conventions.md)、[`docs/documentation-style-guide.md`](./docs/documentation-style-guide.md)

### 新增自有技能

```bash
mkdir -p agent-skills/skills/my-skill-name
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/my-skill-name/SKILL.md
```

登记到 [`agent-skills/catalogs/sdlc/`](./agent-skills/catalogs/sdlc/)；若进入主路径则更新 playbook。

## 贡献

见 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。

## License

[Apache License 2.0](./LICENSE)。外部项目保留其原许可。
