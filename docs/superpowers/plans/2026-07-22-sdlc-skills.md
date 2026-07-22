# SDLC AI Skills 知识库 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 将本仓库整理为覆盖软件工程全生命周期的 AI Skills 知识库（缺口自建 + Superpowers 索引 + 个人偏好轨）。

**Architecture:** 元技能路由 + `catalogs/sdlc` 阶段地图；自有技能补齐需求/设计/发布/运维；中段引用 Superpowers；偏好技能独立分组。

**Tech Stack:** Markdown、Agent Skills（`SKILL.md`）、现有仓库目录约定。

## Global Constraints

- 路径与文件名：`kebab-case`；技能入口固定 `SKILL.md`
- 正文默认简体中文；命令/路径/专有名词保留英文
- 不整包拷贝 Superpowers
- 不引入可运行应用代码
- 自有技能 `description` 含触发场景关键词
- 遵循 `docs/naming-conventions.md` 与 `docs/documentation-style-guide.md`

---

### Task 1: 文档定位与生命周期概览

**Files:**
- Modify: `README.md`
- Create: `docs/sdlc-overview.md`
- Modify: `docs/getting-started.md`
- Modify: `docs/README.md`

- [ ] Step 1: 更新 README 定位为 SDLC AI Skills 知识库，保留非目标，增加生命周期入口
- [ ] Step 2: 撰写 `docs/sdlc-overview.md`（阶段表、自有 vs Superpowers vs 偏好）
- [ ] Step 3: 更新 getting-started 与 docs 索引
- [ ] Step 4: Commit

### Task 2: SDLC Catalog 地图

**Files:**
- Create: `agent-skills/catalogs/sdlc/README.md`
- Modify: `agent-skills/catalogs/README.md`

- [ ] Step 1: 编写阶段 → 技能权威对照表（含 planned 占位）
- [ ] Step 2: 在 catalogs README 登记 sdlc
- [ ] Step 3: Commit

### Task 3: 元技能与阶段自有技能

**Files:**
- Create: `agent-skills/skills/using-sdlc-skills/SKILL.md`
- Create: `agent-skills/skills/gathering-requirements/SKILL.md`
- Create: `agent-skills/skills/designing-architecture/SKILL.md`
- Create: `agent-skills/skills/designing-apis/SKILL.md`
- Create: `agent-skills/skills/preparing-releases/SKILL.md`
- Create: `agent-skills/skills/handling-incidents/SKILL.md`

- [ ] Step 1: 按模板编写上述 6 个技能（触发、流程、红线、验收）
- [ ] Step 2: 更新 `agent-skills/README.md` 与 `agent-skills/skills/README.md` 按阶段索引
- [ ] Step 3: Commit

### Task 4: 交叉链接与验证

**Files:**
- Modify: `docs/superpowers.md`（如需补充与 SDLC 关系）
- Modify: `CONTRIBUTING.md`（如需提及按阶段贡献）

- [ ] Step 1: 补齐交叉引用
- [ ] Step 2: 检查相对链接与命名一致性
- [ ] Step 3: Commit & push
