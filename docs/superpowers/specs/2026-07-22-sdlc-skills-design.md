# 软件工程全生命周期 AI Skills 设计

**状态：** active  
**日期：** 2026-07-22  
**目标：** 将本仓库整理为「软件工程全生命周期（需求 → 设计 → 实现 → 部署 → 运维）」的 AI Skills 知识库，并容纳个人习惯类技能。

## 背景与约束

现有仓库已是「规范文档 + Agent 技能」知识库：

- `specifications/`：给人读的长期标准
- `agent-skills/skills/`：可加载的自有 `SKILL.md`
- `agent-skills/catalogs/`：外部方法论索引（当前仅 Superpowers）
- 明确**不**整包拷贝 Superpowers，**不**做成可运行应用

用户诉求：按软件工程全生命周期封装为 AI Skills 技能集，可含个人喜好。

## 目标

1. 一眼能看出本仓库覆盖 **SDLC 各阶段**，以及每阶段该用哪些技能
2. 自有技能补齐 Superpowers **未覆盖**的阶段（需求、架构/API 设计、发布、运维）
3. Superpowers 继续以 catalog 形式覆盖计划 → 实现 → 调试 → 审查
4. 个人习惯类技能（如 `karpathy-guidelines`）单独成「偏好」轨，不与流程技能混淆
5. 保留「规范 vs 技能」二分法与现有命名/风格约定

## 非目标

- 不 vendoring Superpowers 全文
- 不引入应用代码、CI 产品或 Agent 运行时
- 不一次写完世界上所有工程技能；优先可执行的阶段入口技能
- 不把个人偏好写成强制全员流程（偏好轨显式标注）

## 方案对比

| 方案 | 做法 | 优点 | 缺点 |
|------|------|------|------|
| A. 仅文档地图 | 只写 SDLC 索引，不新建技能 | 改动小 | 仓库仍「空」，Agent 无可加载流程技能 |
| B. 整包自建全生命周期 | 每个阶段自写完整技能，替代 Superpowers | 自洽 | 与上游重复、维护成本高、违背现有非目标 |
| **C. 生命周期枢纽 + 缺口技能（推荐）** | 地图 + 元技能路由；缺口自建；中段引用 Superpowers；偏好独立 | 覆盖全周期、不重复、可扩展 | 需 Agent 同时装 Superpowers 插件才能跑通中段 |

**选定方案 C。**

## 架构

```text
入口：using-sdlc-skills（元技能，按任务匹配阶段 → 技能）
        │
        ▼
┌─────────────── SDLC 阶段地图（catalog + docs）───────────────┐
│ 需求 → 设计 → 计划 → 实现 → 质量 → 发布 → 运维              │
│ 自有技能补缺口 │ Superpowers 覆盖中段 │ 偏好轨横切编码姿态 │
└─────────────────────────────────────────────────────────────┘
        │
        ├── agent-skills/skills/     可加载自有技能
        ├── agent-skills/catalogs/   外部索引（superpowers + sdlc 地图）
        └── specifications/          给人读的长期标准（按主题，可被技能引用）
```

### 内容分层

| 层 | 路径 | 职责 |
|----|------|------|
| 元技能 | `skills/using-sdlc-skills/` | 会话/任务开始时按阶段选技能 |
| 阶段技能 | `skills/<phase-skill>/` | 该阶段的可执行流程 |
| 偏好技能 | `skills/karpathy-guidelines/` 等 | 个人/团队编码习惯，横切实现 |
| 生命周期目录 | `catalogs/sdlc/` | 阶段 → 技能对照表（自有 + 外部） |
| Superpowers 目录 | `catalogs/superpowers/` | 保持现有索引 |
| 人读概览 | `docs/sdlc-overview.md` | 全生命周期说明与使用方式 |

### 技能命名

- 动词短语 `kebab-case`（与现有命名规范一致）
- frontmatter `name` 与目录名一致
- `description` 以触发条件为主（`Use when...` / 中文等价触发描述），含阶段关键词

## 第一批自有技能（缺口补齐）

| 技能 | 阶段 | 触发场景 |
|------|------|----------|
| `using-sdlc-skills` | 元 | 开始任务、不知该用哪套流程时 |
| `gathering-requirements` | 需求 | 澄清需求、写用户故事/验收标准、范围边界 |
| `designing-architecture` | 设计 | 系统设计、模块边界、技术选型取舍 |
| `designing-apis` | 设计 | REST/RPC/事件接口契约与错误模型 |
| `preparing-releases` | 发布 | 版本、变更说明、回滚、发布检查清单 |
| `handling-incidents` | 运维 | 线上故障、降级、复盘 |
| `karpathy-guidelines` | 偏好 | 已有；编码时减少 LLM 常见失误 |

### 明确依赖外部（不自建正文）

计划 / 实现 / 调试 / 审查 / 分支收尾 → 使用 Superpowers（见现有 catalog）。

### 后续可扩展（本轮不实现）

`reviewing-security`、`modeling-data`、`writing-runbooks`、`observing-production` 等，在 `catalogs/sdlc/` 中以「planned」占位即可。

## 文档与索引变更

1. **README.md**：定位改为「SDLC AI Skills 知识库」；保留非目标表；突出生命周期地图入口
2. **docs/sdlc-overview.md**：新建，阶段说明 + 技能表 + 与 Superpowers/偏好关系
3. **docs/getting-started.md**：增加「按生命周期使用」路径
4. **agent-skills/README.md** + **skills/README.md**：按阶段索引自有技能
5. **catalogs/sdlc/**：`README.md` 为权威阶段→技能地图；可选 `SOURCE.md` 说明组织原则
6. **specifications/**：本轮不强制新增规范；技能内可链到已有 `git-commit-message-style-guide` 等

## 成功标准

- 新人打开 README，1 分钟内理解：这是 SDLC 技能集，不是应用
- 每个阶段至少有一条可执行路径（自有技能或 Superpowers 链接）
- 自有技能均可被 Agent 按目录加载；命名与模板一致
- 偏好技能与流程技能在索引中可区分
- 不引入 Superpowers 全文拷贝

## 风险与缓解

| 风险 | 缓解 |
|------|------|
| 与 Superpowers 职责重叠 | 自有技能只覆盖缺口；中段一律指向 catalog |
| 技能过多导致发现困难 | 元技能 `using-sdlc-skills` + 阶段地图双入口 |
| 偏好被当成强制流程 | 索引中单独「偏好」分组并标明可选 |
| 首批技能过薄无法执行 | 每技能含：触发、步骤、红线、验收；避免空壳口号 |

## 实现顺序（摘要）

1. 写入本设计与实现计划
2. 更新 README / getting-started / sdlc-overview
3. 新增 `catalogs/sdlc`
4. 新增元技能与各阶段自有技能
5. 更新技能索引与相关 docs
6. 链接与命名自检后提交
