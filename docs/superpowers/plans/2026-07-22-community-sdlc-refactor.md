# 社区优点吸收重构 — Implementation Plan

> **For agentic workers:** 按任务逐步实现；每任务结束做链接/命名自检。

**Goal:** 吸收 MetaGPT/ChatDev/OpenHands/DevOpsGPT 等优点，重构为本库的 SOP 工件链 + 角色映射 + 编号 Playbook + 部署向技能。

**Architecture:** 保持技能知识库；用文档契约与编排技能模拟「虚拟公司 SOP」，不引入多 Agent 运行时。

**Tech Stack:** Markdown、Agent Skills、现有目录约定。

## Global Constraints

- kebab-case；`SKILL.md` 入口；简体中文正文
- 不 vendoring 外部框架全文
- 不引入可运行应用代码（Dockerfile/CI **模板示例**可放在技能或 templates 中作为文档片段）

---

### Task 1: 设计与社区分析文档

- [ ] 写入设计 spec 与本 plan
- [ ] 写 `docs/community-landscape.md`、`docs/sop-artifacts.md`
- [ ] Commit

### Task 2: Catalog、Playbook、工件模板

- [ ] `catalogs/community/`、更新 `catalogs/sdlc/`
- [ ] `playbooks/full-sdlc/` 编号剧本
- [ ] `templates/artifacts/` 最小模板
- [ ] Commit

### Task 3: 新技能 + 强化现有技能 SOP 小节

- [ ] 新增 4 个技能
- [ ] 为现有流程技能补 SOP 输入/输出/门禁
- [ ] 更新索引与 README / overview
- [ ] Commit & push & PR
