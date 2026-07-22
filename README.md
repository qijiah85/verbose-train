# agent-skills-and-specs

可加载的 **Agent Skills** + 人读的 **规范知识库** —— 教 Agent（和人）按软件工程 SOP 干活。

> GitHub 仓库名可能是自动生成的；用途以本文为准。

## 30 秒搞清是什么

| 是 | 不是 |
|----|------|
| 给 Cursor / Claude 等宿主用的 `SKILL.md` 技能集 | MetaGPT / ChatDev 式多智能体运行时 |
| 按需求→设计→实现→部署→运维组织的阶段技能 | OpenHands 式沙箱 / 替你操生产集群 |
| 人读长期规范（`specifications/`，起步集） | 可运行业务应用、SDK、插件市场 |
| SOP 工件契约（PRD、API、发布单等 ID 与门禁） | Superpowers 全文镜像（请插件安装） |

吸收社区方法（工件 SOP、阶段门禁、可执行验证），边界见 [社区对照](./docs/community-landscape.md)。

## 开始使用

**1. 安装本库技能**（否则对话里点名也不会加载正文）

```bash
# 在业务仓库根目录：链接全部自有技能（路径换成你的克隆位置）
mkdir -p .cursor/skills
ln -s /绝对路径/agent-skills-and-specs/agent-skills/skills/* .cursor/skills/
```

完整说明（Cursor / Claude、最少安装集）：[docs/installing-skills.md](./docs/installing-skills.md)

**2. 选一条路径**

| 场景 | 做法 |
|------|------|
| 从一句话需求做到发布准备 | 使用 [`running-sdlc-playbook`](./agent-skills/skills/running-sdlc-playbook/)（剧本：[playbooks/full-sdlc](./agent-skills/playbooks/full-sdlc/)） |
| 只做当前阶段 | 使用 [`using-sdlc-skills`](./agent-skills/skills/using-sdlc-skills/) 路由 |
| 只要计划 / TDD / 审查纪律 | 安装 [Superpowers](./docs/superpowers.md) 插件 |

**3. 按需查阅**

- 阶段与技能地图 → [agent-skills/catalogs/sdlc](./agent-skills/catalogs/sdlc/)
- 工件 ID 与门禁 → [docs/sop-artifacts.md](./docs/sop-artifacts.md)
- 总览 → [docs/sdlc-overview.md](./docs/sdlc-overview.md) · 上手 → [docs/getting-started.md](./docs/getting-started.md)

## 生命周期与技能

```text
需求 → 设计 → 计划/实现/质量 → 容器/CI → 发布 → 运维
自有技能↑        Superpowers↑         自有技能↑
```

| 阶段 | 技能 | 工件 |
|------|------|------|
| 编排 | `using-sdlc-skills` · `running-sdlc-playbook` | 阶段声明 |
| 需求 | `gathering-requirements` | `A-PRD` |
| 设计 | `designing-architecture` · `modeling-data` · `designing-apis` | `A-ARCH` / `A-DATA` / `A-API` |
| 计划→质量 | Superpowers（外部） | `A-PLAN` / `A-VERIFY` |
| 部署准备 | `containerizing-applications` · `writing-cicd-pipelines` | `A-CONTAINER` / `A-CICD` |
| 发布 | `preparing-releases` | `A-RELEASE` |
| 运维 | `handling-incidents` | `A-INCIDENT` |
| 偏好（可选） | `karpathy-guidelines` | — |

索引：[agent-skills/skills](./agent-skills/skills/)

## 目录约定

| 路径 | 给谁 | 做什么 |
|------|------|--------|
| `agent-skills/skills/` | Agent | **安装这些**：可加载 `SKILL.md` |
| `agent-skills/playbooks/` | 人 / 编排 | 编号步骤指针（不是第二份技能正文） |
| `agent-skills/catalogs/` | 人 | 阶段地图、Superpowers / 社区索引 |
| `agent-skills/templates/` | 贡献者 | 技能模板、SOP 工件模板 |
| `specifications/` | 人（Agent 可引用） | 长期规范起步集 |
| `docs/` | 人 | 安装、概览、SOP、社区对照 |
| `examples/` | 人 | 演示样例，非生产规范 |

一次性项目交付物（PRD 等）写在**业务仓库**的 `docs/sdlc/`，见 [sop-artifacts](./docs/sop-artifacts.md)；不要放进本库 `specifications/`。

```text
.
├── agent-skills/skills/   ← 装到宿主的技能
├── agent-skills/playbooks/
├── agent-skills/catalogs/
├── agent-skills/templates/
├── specifications/
├── docs/
└── examples/
```

## 贡献

```bash
# 新技能
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md agent-skills/skills/<skill-name>/SKILL.md
# 登记 catalogs/sdlc；进入主路径则更新 playbooks/full-sdlc

# 新规范
cp specifications/templates/specification-template.md \
   specifications/<category>/<doc-name>.md
```

命名与风格：[naming-conventions](./docs/naming-conventions.md) · [documentation-style-guide](./docs/documentation-style-guide.md) · [CONTRIBUTING](./CONTRIBUTING.md)

默认分支 **`main`** 建议开启分支保护（禁止直推 / force-push）：见 [docs/branch-protection.md](./docs/branch-protection.md)。

## License

[Apache License 2.0](./LICENSE)。引用的外部项目保留其原许可。
