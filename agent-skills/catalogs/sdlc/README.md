# SDLC 技能目录（阶段地图）

本目录是本仓库的**软件工程全生命周期权威对照表**：每个阶段对应哪些自有技能、哪些外部技能（Superpowers），以及规划中的扩展。

人读概览见 [`../../../docs/sdlc-overview.md`](../../../docs/sdlc-overview.md)。  
可加载正文只存在于 [`../../skills/`](../../skills/) 或上游插件，本目录不存放技能全文镜像。

## 组织原则

1. **缺口自建**：需求、架构/API 设计、发布、运维等 Superpowers 未覆盖的阶段，用自有 `SKILL.md`
2. **中段不重复**：计划 / 实现 / 调试 / 审查指向 [Superpowers catalog](../superpowers/)
3. **偏好单列**：个人习惯技能不冒充强制流程
4. **planned 可占位**：尚未编写的技能可标 `planned`，避免空洞目录

## 阶段 → 技能

### 0. 元 / 路由

| 技能 | 状态 | 位置 |
|------|------|------|
| using-sdlc-skills | active | [skills/using-sdlc-skills](../../skills/using-sdlc-skills/) |

### 1. 需求

| 技能 | 状态 | 位置 |
|------|------|------|
| gathering-requirements | active | [skills/gathering-requirements](../../skills/gathering-requirements/) |

### 2. 设计

| 技能 | 状态 | 位置 |
|------|------|------|
| designing-architecture | active | [skills/designing-architecture](../../skills/designing-architecture/) |
| designing-apis | active | [skills/designing-apis](../../skills/designing-apis/) |
| brainstorming | external | [Superpowers](../superpowers/) |
| modeling-data | planned | — |
| reviewing-security（设计期威胁建模） | planned | — |

### 3. 计划

| 技能 | 状态 | 位置 |
|------|------|------|
| writing-plans | external | [Superpowers](../superpowers/) |
| executing-plans | external | [Superpowers](../superpowers/) |

### 4. 实现

| 技能 | 状态 | 位置 |
|------|------|------|
| test-driven-development | external | [Superpowers](../superpowers/) |
| subagent-driven-development | external | [Superpowers](../superpowers/) |
| using-git-worktrees | external | [Superpowers](../superpowers/) |
| dispatching-parallel-agents | external | [Superpowers](../superpowers/) |

### 5. 质量

| 技能 | 状态 | 位置 |
|------|------|------|
| systematic-debugging | external | [Superpowers](../superpowers/) |
| verification-before-completion | external | [Superpowers](../superpowers/) |
| requesting-code-review / receiving-code-review | external | [Superpowers](../superpowers/) |
| reviewing-security（合并前） | planned | — |

### 6. 发布

| 技能 | 状态 | 位置 |
|------|------|------|
| preparing-releases | active | [skills/preparing-releases](../../skills/preparing-releases/) |
| finishing-a-development-branch | external | [Superpowers](../superpowers/) |

### 7. 运维

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
using-sdlc-skills
  → gathering-requirements
  → designing-architecture / designing-apis
  → (Superpowers) brainstorming → writing-plans
  → (Superpowers) TDD + 实现编排
  → (Superpowers) verification + code-review
  → preparing-releases
  → handling-incidents（按需）
```

编码过程中可叠加 `karpathy-guidelines`。

## 相关

- Superpowers 安装与工作流：[`../../../docs/superpowers.md`](../../../docs/superpowers.md)
- 自有技能列表：[`../../skills/README.md`](../../skills/README.md)
