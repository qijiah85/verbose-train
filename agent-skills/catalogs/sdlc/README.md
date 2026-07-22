# SDLC 技能目录（阶段地图）

本目录是本仓库的**软件工程全生命周期权威对照表**：阶段技能、SOP 工件、角色映射、外部索引与规划项。

- 人读概览：[`../../../docs/sdlc-overview.md`](../../../docs/sdlc-overview.md)
- 工件契约：[`../../../docs/sop-artifacts.md`](../../../docs/sop-artifacts.md)
- 社区对照：[`../../../docs/community-landscape.md`](../../../docs/community-landscape.md)
- 编号剧本：[`../../playbooks/full-sdlc/`](../../playbooks/full-sdlc/)

可加载正文只在 [`../../skills/`](../../skills/) 或上游插件；本目录不镜像全文。

## 组织原则

1. **缺口自建**：需求、设计、数据、容器、CI、发布、运维用自有 `SKILL.md`
2. **中段不重复**：计划 / 实现 / 调试 / 审查 → [Superpowers](../superpowers/)
3. **SOP 工件门禁**：吸收 MetaGPT；阶段输入/输出见 `sop-artifacts.md`
4. **Playbook 编排**：吸收 ChatDev；不实现多 Agent 运行时
5. **可执行验证**：吸收 OpenHands；部署类技能必须给可跑检查
6. **偏好单列**：个人习惯不冒充强制流程

## 角色 → 技能（可选）

| 角色 | 技能 |
|------|------|
| Orchestrator | `using-sdlc-skills`、`running-sdlc-playbook` |
| Product Manager | `gathering-requirements` |
| Architect | `designing-architecture`、`modeling-data`、`designing-apis` |
| Project Manager | Superpowers `writing-plans` |
| Engineer | Superpowers TDD / 实现编排；可选 `karpathy-guidelines` |
| QA | Superpowers verification / review / debugging |
| Release Engineer | `containerizing-applications`、`writing-cicd-pipelines`、`preparing-releases` |
| SRE | `handling-incidents` |

## 阶段 → 技能

### 0. 元 / 编排

| 技能 | 状态 | 位置 |
|------|------|------|
| using-sdlc-skills | active | [skills/using-sdlc-skills](../../skills/using-sdlc-skills/) |
| running-sdlc-playbook | active | [skills/running-sdlc-playbook](../../skills/running-sdlc-playbook/) |

### 1. 需求 → `A-PRD`

| 技能 | 状态 | 位置 |
|------|------|------|
| gathering-requirements | active | [skills/gathering-requirements](../../skills/gathering-requirements/) |

### 2. 设计 → `A-ARCH` / `A-DATA` / `A-API`

| 技能 | 状态 | 位置 |
|------|------|------|
| designing-architecture | active | [skills/designing-architecture](../../skills/designing-architecture/) |
| modeling-data | active | [skills/modeling-data](../../skills/modeling-data/) |
| designing-apis | active | [skills/designing-apis](../../skills/designing-apis/) |
| brainstorming | external | [Superpowers](../superpowers/) |
| reviewing-security（威胁建模） | planned | — |

### 3. 计划 → `A-PLAN`

| 技能 | 状态 | 位置 |
|------|------|------|
| writing-plans / executing-plans | external | [Superpowers](../superpowers/) |

### 4. 实现

| 技能 | 状态 | 位置 |
|------|------|------|
| test-driven-development 等 | external | [Superpowers](../superpowers/) |

### 5. 质量 → `A-VERIFY`

| 技能 | 状态 | 位置 |
|------|------|------|
| systematic-debugging / verification / code-review | external | [Superpowers](../superpowers/) |
| reviewing-security（合并前） | planned | — |

### 6. 部署准备 → `A-CONTAINER` / `A-CICD`

| 技能 | 状态 | 位置 |
|------|------|------|
| containerizing-applications | active | [skills/containerizing-applications](../../skills/containerizing-applications/) |
| writing-cicd-pipelines | active | [skills/writing-cicd-pipelines](../../skills/writing-cicd-pipelines/) |
| packaging-helm-charts | planned | — |

### 7. 发布 → `A-RELEASE`

| 技能 | 状态 | 位置 |
|------|------|------|
| preparing-releases | active | [skills/preparing-releases](../../skills/preparing-releases/) |
| finishing-a-development-branch | external | [Superpowers](../superpowers/) |

### 8. 运维 → `A-INCIDENT`

| 技能 | 状态 | 位置 |
|------|------|------|
| handling-incidents | active | [skills/handling-incidents](../../skills/handling-incidents/) |
| writing-runbooks | planned | — |
| observing-production | planned | — |

### 偏好（横切，可选）

| 技能 | 状态 | 位置 |
|------|------|------|
| karpathy-guidelines | active | [skills/karpathy-guidelines](../../skills/karpathy-guidelines/) |

## 推荐主路径

```text
running-sdlc-playbook（或 using-sdlc-skills）
  → gathering-requirements                 → A-PRD
  → designing-architecture / modeling-data / designing-apis
  → (Superpowers) plans → TDD → verification → A-PLAN / A-VERIFY
  → containerizing-applications            → A-CONTAINER
  → writing-cicd-pipelines                 → A-CICD
  → preparing-releases                     → A-RELEASE
  → handling-incidents（按需）
```

编号逐步说明见 [`../../playbooks/full-sdlc/`](../../playbooks/full-sdlc/)。

## 相关

- 社区项目索引：[`../community/`](../community/)
- Superpowers：[`../../../docs/superpowers.md`](../../../docs/superpowers.md)
- 自有技能列表：[`../../skills/README.md`](../../skills/README.md)
