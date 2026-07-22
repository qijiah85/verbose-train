# 社区项目目录（Catalog）

外部「全生命周期 / 多智能体 / DevOps Agent」项目的索引。本目录**不** vendoring 其源码或技能全文。

人读对照文：[`../../../docs/community-landscape.md`](../../../docs/community-landscape.md)。

| 项目 | 类型 | 上游 | 本库如何用 |
|------|------|------|------------|
| MetaGPT | 多 Agent SOP 软件公司 | https://github.com/FoundationAgents/MetaGPT | 学习工件链与角色；不在本库运行 |
| ChatDev | ChatChain 虚拟公司 | https://github.com/OpenBMB/ChatDev | 学习阶段门禁；用 playbook 表达 |
| OpenHands | 工具型编码 Agent | https://github.com/OpenHands/OpenHands | 学习可执行验证；技能要求可跑检查 |
| DevOpsGPT | 需求→DevOps 交付 | https://github.com/kuafuai/DevOpsGPT | 启发 CI/CD 技能与发布一体 |
| Superpowers | IDE 工程纪律技能集 | https://github.com/obra/superpowers | **推荐安装**；见 [../superpowers/](../superpowers/) |
| 编号 AI-SDLC Skill 包 | Cursor/Claude 顺序技能 | 社区多种实现 | 本库用 [playbooks/full-sdlc](../../playbooks/full-sdlc/) 表达 |

## 边界

- 需要「一键生成整家公司」→ 用 MetaGPT/ChatDev，不在本仓库模拟运行时  
- 需要「Agent 直接操 Docker/云 CLI」→ 用 OpenHands 等宿主 + 本库技能作 SOP  
- 需要「可加载的阶段纪律与工件契约」→ 用本仓库 `skills/` + `docs/sop-artifacts.md`
