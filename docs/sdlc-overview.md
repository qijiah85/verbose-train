# 软件工程全生命周期（SDLC）技能概览

本仓库把软件工程从**需求到运维**拆成可被 Agent 加载的技能，并用 **SOP 工件链**（吸收 MetaGPT）与 **阶段门禁 Playbook**（吸收 ChatDev）串起来；部署端强调**可执行验证**（吸收 OpenHands）。中段计划/TDD/审查继续用 Superpowers。

与多智能体「虚拟公司」运行时的差异见 [`community-landscape.md`](./community-landscape.md)。

## 怎么用

1. **单阶段：** [`using-sdlc-skills`](../agent-skills/skills/using-sdlc-skills/) 路由  
2. **端到端：** [`running-sdlc-playbook`](../agent-skills/skills/running-sdlc-playbook/) + [编号剧本](../agent-skills/playbooks/full-sdlc/)  
3. **工件契约：** [`sop-artifacts.md`](./sop-artifacts.md)  
4. **中段纪律：** [`superpowers.md`](./superpowers.md)

权威对照表：[`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)

## 阶段与技能

```text
需求 → 设计(架构/数据/API) → 计划 → 实现 → 质量
        → 容器化 → CI/CD → 发布 → 运维
```

| 阶段 | 技能 | 类型 | 工件 |
|------|------|------|------|
| 编排 | using-sdlc-skills / running-sdlc-playbook | 自有 | 阶段声明 / 全套索引 |
| 需求 | gathering-requirements | 自有 | `A-PRD` |
| 设计 | designing-architecture / modeling-data / designing-apis | 自有 | `A-ARCH` / `A-DATA` / `A-API` |
| 计划→质量 | Superpowers | 外部 | `A-PLAN` / `A-VERIFY` |
| 部署准备 | containerizing-applications / writing-cicd-pipelines | 自有 | `A-CONTAINER` / `A-CICD` |
| 发布 | preparing-releases | 自有 | `A-RELEASE` |
| 运维 | handling-incidents | 自有 | `A-INCIDENT` |
| 偏好 | karpathy-guidelines | 自有 · 可选 | — |

## 四轨说明

| 轨 | 含义 | 例子 |
|----|------|------|
| **流程技能** | 阶段 SOP | `gathering-requirements` |
| **编排 / Playbook** | 链式门禁 | `running-sdlc-playbook` |
| **外部方法论** | 插件索引 | Superpowers、社区 catalog |
| **偏好技能** | 可选编码姿态 | `karpathy-guidelines` |

## 与规范文档的关系

- **技能**：约束 Agent 此刻怎么做  
- **规范**（`specifications/`）：长期标准  
- **SOP 工件**：一次项目交付的活文档（写在**目标业务仓库**的 `docs/sdlc/`，不是本知识库的 `docs/`）

## 扩展原则

- Superpowers 已覆盖的中段：**不要**平行拷贝  
- 新缺口：写入 `skills/` 并登记 sdlc catalog + playbook 序号  
- K8s/Helm 等发行版相关：先 planned，保持可移植容器/CI 优先
