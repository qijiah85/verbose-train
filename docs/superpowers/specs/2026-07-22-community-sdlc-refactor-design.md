# 吸收社区 SDLC / Multi-Agent 优点的重构设计

**状态：** active  
**日期：** 2026-07-22  
**目标：** 分析 MetaGPT、ChatDev、OpenHands、DevOpsGPT 等项目，把其**可移植优点**吸收进本仓库，同时保持「技能知识库」定位（非多智能体运行时）。

## 社区对照（摘要）

| 项目 | 形态 | 可吸收优点 | 明确不吸收 |
|------|------|------------|------------|
| **MetaGPT** | 多智能体公司模拟 | SOP 标准化交付物链（PRD→设计→API→任务）；角色专业化；工件交接 | 内置多 Agent 运行时、消息总线、整包代码生成流水线 |
| **ChatDev** | ChatChain 阶段协作 | 阶段串行 + 阶段完成门禁；阶段内可双角色研讨；设计→编码→测试→文档 | 虚拟公司运行时、强制 waterfall 不可跳过 |
| **OpenHands** | 工具型编码 Agent | 「可执行验证」优先于纸面完成；Shell/Docker/Git 落地 | 变成 Agent 宿主或沙箱产品 |
| **DevOpsGPT / AI-SDLC 模板** | 需求→代码→CI 一体 / 编号 Skill 包 | 编号 playbook 易发现；部署与 CI 为一等公民 | 绑定单一运行时或把本库做成应用 |
| **KubeSphere LuBan 类** | 云原生 DevOps Skill | 容器化、清单、可观测性进技能集 | 绑定特定 K8s 发行版或云厂商 |

## 本库缺口（相对社区）

上一版已有阶段技能与 Superpowers 中段索引，但仍缺：

1. **SOP 工件契约**（阶段输入/输出文件名与验收）
2. **角色 → 技能映射**（可选「扮演 PM/架构师」而不启动多 Agent）
3. **端到端 Playbook**（编号链式编排 + 人工门禁）
4. **数据建模、容器化、CI/CD** 技能（部署端偏弱）
5. **社区对照目录**（诚实说明与 MetaGPT 等的差异）

## 方案对比

| 方案 | 做法 | 结论 |
|------|------|------|
| A. 变成迷你 MetaGPT/ChatDev | 引入角色 Agent 运行时 | 否：违背非目标 |
| B. 只写分析文档不改技能 | 文档对比 | 否：用户要求重构 |
| **C. SOP + 角色映射 + Playbook + 部署技能（推荐）** | 知识库增强：契约、门禁、编号剧本、补部署技能 | 是 |

## 架构（重构后）

```text
running-sdlc-playbook / using-sdlc-skills
        │
        ▼
  SOP 工件链（docs/sop-artifacts.md）
  PRD → 架构/数据/API → 计划 → 代码+测试 → 容器/CI → 发布 → 运维
        │
        ├── 角色映射（可选）：PM/Architect/Engineer/QA/SRE → 技能
        ├── 阶段门禁：下游不得在上游工件缺失时假装完成
        └── 执行验证（OpenHands 启发）：交付物尽量可运行检查
```

## 本轮交付

### 文档

- `docs/community-landscape.md` — 社区分析与吸收边界
- `docs/sop-artifacts.md` — 标准工件契约
- 更新 `docs/sdlc-overview.md`、`README.md`、getting-started

### Catalog / Playbook

- `agent-skills/catalogs/community/` — 外部项目索引
- `agent-skills/playbooks/full-sdlc/` — 编号 01–10 链式剧本
- 更新 `catalogs/sdlc/`：角色表、SOP 链、新技能

### 新技能

| 技能 | 吸收来源 | 作用 |
|------|----------|------|
| `running-sdlc-playbook` | ChatDev ChatChain + 编号 Skill 包 | 端到端编排 + HITL 门禁 |
| `modeling-data` | MetaGPT 数据结构工件 | ER/表结构/迁移注意 |
| `containerizing-applications` | LuBan / OpenHands | Dockerfile/Compose 可运行打包 |
| `writing-cicd-pipelines` | DevOpsGPT / AI-SDLC | CI 测试与发布流水线草稿 |

### 改造现有技能

为流程技能补齐统一小节：

- `SOP 输入` / `SOP 输出`（工件 ID）
- `阶段门禁`（缺什么不能进入）
- 实现/部署类强调**可执行验证**

### 工件模板

`agent-skills/templates/artifacts/` 提供最小 Markdown 模板（PRD、架构决策摘要、发布检查等），供技能引用。

## 非目标（保持）

- 不实现多智能体调度器
- 不整包拷贝 MetaGPT/ChatDev/OpenHands
- 不绑定某一云厂商或 K8s 发行版
- 中段计划/TDD/审查仍优先 Superpowers

## 成功标准

- README 能说清：本库 vs MetaGPT/ChatDev（技能集 vs 运行时）
- 任意阶段技能可答：输入工件、输出工件、门禁
- 存在一条编号 playbook，可从一句话需求跑到容器/CI 草稿
- 新增技能命名与索引完整登记
