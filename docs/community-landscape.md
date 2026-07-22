# 社区 SDLC / Multi-Agent 项目对照

本仓库是 **Cursor/Claude 等宿主可加载的 Skills + 规范知识库**，不是多智能体公司模拟器。下文对照主流开源项目，说明我们**吸收什么、不做什么**。

## 一览

| 项目 | Stars 量级（社区口碑） | 核心形态 | 对本库启发 |
|------|------------------------|----------|------------|
| [MetaGPT](https://github.com/FoundationAgents/MetaGPT) | 很高 | 角色 Agent + SOP：`Code = SOP(Team)` | 标准化工件链、角色专业化 |
| [ChatDev](https://github.com/OpenBMB/ChatDev) | 很高 | ChatChain：设计→编码→测试→文档 | 阶段串行、完成门禁、阶段内研讨 |
| [OpenHands](https://github.com/OpenHands/OpenHands)（原 OpenDevin） | 很高 | 工具型 Agent（Shell/Docker/Git） | 可执行验证、写完可部署 |
| [DevOpsGPT](https://github.com/kuafuai/DevOpsGPT) | 中高 | LLM + DevOps 工具：需求到交付 | CI/CD 与发布为一等公民 |
| AI-SDLC / Cursor Skill 包（如编号 01–0N） | 多样 | IDE 内 `.prompt` / `SKILL.md` 序列 | 编号 Playbook、拿来即用 |
| 云原生 LuBan 类插件 | 生态向 | Helm/YAML/可观测性 Skill | 容器化与部署清单技能 |

索引页：[`../agent-skills/catalogs/community/`](../agent-skills/catalogs/community/)。

## 分项优点与吸收方式

### MetaGPT

**优点：** 一句话需求 → PRD / 竞争分析 / 数据结构 / API / 任务分配；PM、Architect、Engineer、QA 职责清晰；工件在角色间交接。

**本库吸收：**

- [`sop-artifacts.md`](./sop-artifacts.md) 固定工件 ID 与门禁
- `catalogs/sdlc` 中的**角色 → 技能**映射（单 Agent 可「切换角色」加载不同技能）

**不吸收：** 多 Agent 消息池、自动雇佣团队、端到端无人值守代码工厂。

### ChatDev

**优点：** ChatChain 阶段清晰；阶段结束才进入下一阶段；阶段内 instructor/assistant 对话收敛。

**本库吸收：**

- [`running-sdlc-playbook`](../agent-skills/skills/running-sdlc-playbook/) 强制阶段门禁与人工确认点（HITL）
- [`playbooks/full-sdlc/`](../agent-skills/playbooks/full-sdlc/) 编号链式剧本

**不吸收：** 必须启动「虚拟公司」进程；强制不可裁剪的 waterfall。

### OpenHands

**优点：** Agent 真正跑命令、改文件、用 Docker/Git；完成以验证为准。

**本库吸收：**

- 部署向技能要求给出**可运行的检查命令**（build/test/compose config）
- 与 Superpowers `verification-before-completion` 对齐：无证据不称完成

**不吸收：** 本库不提供 Agent 沙箱或 Docker socket 编排。

### DevOpsGPT / 编号 Skill 包

**优点：** 需求澄清 → 接口/伪代码 → CI → 发布；Cursor 用户喜欢 `01-requirement` 式顺序包。

**本库吸收：**

- `writing-cicd-pipelines`、`containerizing-applications`
- 编号 playbook（指向真实 `skills/`，避免维护两套正文）

**不吸收：** 绑定某一 DevOps 平台 UI 或企业版闭源流程。

### 云原生 LuBan 类

**优点：** 「部署 Redis+前端」类对话直达清单与 apply。

**本库吸收：** 容器/Compose 级可移植技能；K8s/Helm 细节标为扩展（planned），避免绑定发行版。

## 定位对照

```text
MetaGPT / ChatDev     →  多智能体「公司」运行时（生成软件）
OpenHands / DevOpsGPT →  可执行 Agent 产品（改环境、部署）
本仓库                →  技能与规范知识库（教 Agent 怎么按 SOP 干活）
Superpowers（插件）   →  中段工程纪律（计划/TDD/审查）
```

## 推荐组合用法

1. 本库 playbook / 阶段技能：定 SOP 与工件  
2. Superpowers：计划、TDD、调试、审查  
3. 需要无人值守多角色时：另选 MetaGPT/ChatDev 等运行时（本库只作对照，不替代）
