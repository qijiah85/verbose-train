# agent-skills-and-specs

**定位：可加载 Agent Skills + 人读规范知识库 —— 教 Agent 按 SOP 干活。**

GitHub 仓库名可能是自动生成的；实际用途以下文为准。

## 这个仓库是干什么的

面向 Cursor / Claude 等宿主的**技能与规范知识库**（不是多智能体运行时、不是沙箱产品）：

1. **Agent Skills（`agent-skills/skills/`）** — 可加载的 `SKILL.md`，按 SDLC 阶段约束 Agent 行为  
2. **人读规范（`specifications/`）** — 长期标准；当前为起步集，随团队增长补全  
3. **SOP 工件契约（`docs/sop-artifacts.md`）** — 一次项目交付的活文档 ID 与门禁  
4. **Playbooks / Catalogs** — 编排指针与外部索引（**不可**代替 `SKILL.md` 加载）

吸收 MetaGPT（工件 SOP）、ChatDev（阶段门禁）、OpenHands（可执行验证）等**方法**，但保持知识库边界。对照见 [`docs/community-landscape.md`](./docs/community-landscape.md)。

**成功标准：** 1 分钟内搞清定位、如何安装技能、当前阶段该加载什么、该产出哪份工件。

## 四类内容怎么放

| 目录 | 给谁 | 放什么 | 不放什么 |
|------|------|--------|----------|
| `agent-skills/skills/` | Agent | 可加载 `SKILL.md` | 外部框架全文 |
| `agent-skills/playbooks/` | 人 / 编排技能 | 编号步骤指针 | 第二份技能正文 |
| `agent-skills/catalogs/` | 人 | 阶段地图、外部索引 | 可执行运行时 |
| `specifications/` | 人（Agent 可引用） | 长期规范 | 一次性项目 PRD（那是业务仓 `docs/sdlc/` 工件） |

## 快速入口

| 我想… | 去这里 |
|------|--------|
| **安装本库技能** | [`docs/installing-skills.md`](./docs/installing-skills.md) |
| 跑通需求→部署 SOP | [`running-sdlc-playbook`](./agent-skills/skills/running-sdlc-playbook/) · [剧本](./agent-skills/playbooks/full-sdlc/) |
| 只做某一阶段 | [`using-sdlc-skills`](./agent-skills/skills/using-sdlc-skills/) · [地图](./agent-skills/catalogs/sdlc/) |
| 工件 ID 与门禁 | [`docs/sop-artifacts.md`](./docs/sop-artifacts.md) |
| 中段 TDD/审查 | [`docs/superpowers.md`](./docs/superpowers.md)（插件） |
| 社区边界 | [`docs/community-landscape.md`](./docs/community-landscape.md) |

## 生命周期速览

| 阶段 | 主要技能 | 工件 |
|------|----------|------|
| 编排 | `using-sdlc-skills` / `running-sdlc-playbook` | 阶段声明 |
| 需求 | `gathering-requirements` | `A-PRD` |
| 设计 | `designing-architecture` / `modeling-data` / `designing-apis` | `A-ARCH` / `A-DATA` / `A-API` |
| 计划→质量 | Superpowers（外部插件） | `A-PLAN` / `A-VERIFY` |
| 部署准备 | `containerizing-applications` / `writing-cicd-pipelines` | `A-CONTAINER` / `A-CICD` |
| 发布 | `preparing-releases` | `A-RELEASE` |
| 运维 | `handling-incidents` | `A-INCIDENT` |
| 偏好 | `karpathy-guidelines` | — |

## 这个仓库不是干什么的

| 不是 | 说明 |
|------|------|
| ❌ 多智能体「虚拟公司」运行时 | 不调度 MetaGPT/ChatDev 式多角色进程 |
| ❌ Agent 沙箱 / 云原生控制面 | 不提供 Docker socket、不替你 `kubectl apply` 生产集群 |
| ❌ 可运行业务应用 / SDK | 只有 Markdown 技能与规范 |
| ❌ Superpowers 全文镜像 | 请插件安装 |
| ❌ 「规范已经写全」的承诺 | `specifications/` 为起步集，欢迎按目录补全 |

## 仓库结构

```text
.
├── specifications/     # 人读规范（起步集）
├── agent-skills/
│   ├── skills/         # 可加载技能 ← 安装这个
│   ├── playbooks/      # 编号剧本（指针）
│   ├── catalogs/       # sdlc / superpowers / community
│   └── templates/      # 技能与 SOP 工件模板
├── docs/               # 安装、概览、SOP、社区对照
└── examples/
```

## 我该怎么用

1. [`docs/installing-skills.md`](./docs/installing-skills.md) — **先安装**  
2. [`docs/getting-started.md`](./docs/getting-started.md)  
3. [`docs/sdlc-overview.md`](./docs/sdlc-overview.md)

### 新增自有技能

```bash
mkdir -p agent-skills/skills/my-skill-name
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/my-skill-name/SKILL.md
```

登记 [`agent-skills/catalogs/sdlc/`](./agent-skills/catalogs/sdlc/)；主路径变更则更新 playbook。

## 贡献

见 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。

## License

[Apache License 2.0](./LICENSE)。外部项目保留其原许可。
