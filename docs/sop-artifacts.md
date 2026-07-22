# SOP 工件契约

吸收 MetaGPT「标准化操作流程」思想：每个阶段消费上游工件、产出下游可引用的工件。  
工件默认写在目标业务仓库的 `docs/sdlc/`（可按项目调整路径，但 **ID 保持稳定**）。

权威阶段地图：[`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)。  
模板：[`../agent-skills/templates/artifacts/`](../agent-skills/templates/artifacts/)。

## 工件一览

| ID | 文件名（建议） | 产出阶段 / 技能 | 必需内容 |
|----|----------------|-----------------|----------|
| `A-PRD` | `docs/sdlc/01-prd.md` | 需求 / `gathering-requirements` | 目标、非目标、用户故事、验收标准、开放问题 |
| `A-ARCH` | `docs/sdlc/02-architecture.md` | 设计 / `designing-architecture` | 边界、组件、方案比较、ADR 摘要、风险 |
| `A-DATA` | `docs/sdlc/03-data-model.md` | 设计 / `modeling-data` | 实体、关系、关键约束、迁移注意 |
| `A-API` | `docs/sdlc/04-api-contract.md` | 设计 / `designing-apis` | 端点/事件、schema、错误模型、幂等与版本 |
| `A-PLAN` | `docs/sdlc/05-implementation-plan.md` | 计划 / Superpowers `writing-plans` | 可检查任务列表与验证方式 |
| `A-VERIFY` | `docs/sdlc/06-verification-log.md` | 质量 / Superpowers verification | 已跑命令与结果摘要 |
| `A-CONTAINER` | `docs/sdlc/07-container.md` + `Dockerfile` 等 | 部署准备 / `containerizing-applications` | 镜像构建方式与本地编排 |
| `A-CICD` | `docs/sdlc/08-cicd.md` + workflow 文件 | 部署准备 / `writing-cicd-pipelines` | 测试/构建/发布流水线说明 |
| `A-RELEASE` | `docs/sdlc/09-release.md` | 发布 / `preparing-releases` | 版本、changelog、回滚、检查清单 |
| `A-INCIDENT` | `docs/sdlc/10-incident-*.md` | 运维 / `handling-incidents` | 时间线、影响、缓解、改进项 |

## 阶段门禁（ChatDev 启发）

| 进入阶段 | 最少上游工件 | 未满足时 |
|----------|--------------|----------|
| 设计 | `A-PRD`（或会话内等价确认块） | 先补需求，禁止空谈技术选型冒充需求 |
| 计划 / 实现 | `A-PRD` +（`A-ARCH` 或已声明的最小架构） | 先补设计；纯 bugfix可豁免并注明 |
| 容器化 / CI | `A-VERIFY` 或等价「测试已通过」证据 | 先验证再打包 |
| 发布 | `A-VERIFY` +（若有）`A-CONTAINER`/`A-CICD` | 禁止无回滚方案上线 |
| 复盘归档 | 事故已缓解 | 未止血前不做大范围重构 |

**豁免规则：** 用户明确只要草稿/spike 时，可标注 `gate=waived` 与风险，但仍须写出缺失工件列表。

## 角色 → 技能（MetaGPT / ChatDev 启发）

单 Agent 场景下「切换角色」= 加载对应技能，不启动多进程团队。

| 角色 | 主技能 | 典型产出 |
|------|--------|----------|
| Product Manager | `gathering-requirements` | `A-PRD` |
| Architect | `designing-architecture`、`modeling-data`、`designing-apis` | `A-ARCH` / `A-DATA` / `A-API` |
| Project Manager | Superpowers `writing-plans` | `A-PLAN` |
| Engineer | Superpowers TDD + 实现编排；偏好 `karpathy-guidelines` | 代码 + 测试 |
| QA | Superpowers debugging / verification / code-review | `A-VERIFY` |
| Release Engineer | `containerizing-applications`、`writing-cicd-pipelines`、`preparing-releases` | `A-CONTAINER` / `A-CICD` / `A-RELEASE` |
| SRE / On-call | `handling-incidents` | `A-INCIDENT` |
| Orchestrator | `running-sdlc-playbook`、`using-sdlc-skills` | 阶段路由与门禁 |

## 与外部运行时的关系

若使用 MetaGPT/ChatDev 生成初稿，可将其输出**映射**到上表 ID 后，再由本库技能做门禁检查与人工修订；不要两边各维护一套互不相认的文档名。
