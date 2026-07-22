---
name: running-sdlc-playbook
description: >
  Use when running an end-to-end software lifecycle from a one-line idea through
  design, implementation, container/CI, and release, with phase gates.
  Triggers: full SDLC, playbook, ChatChain, end-to-end, 全流程, 端到端, 从需求到部署.
---

# Running SDLC Playbook

## 概述

按编号剧本串起全生命周期（吸收 ChatDev ChatChain + 社区编号 Skill 包），每步产出 SOP 工件并在门禁处停顿。本技能是**编排器**，不是多智能体运行时。

剧本：`agent-skills/playbooks/full-sdlc/`  
工件：`docs/sop-artifacts.md`

## 适用场景

**使用，当：**

- 用户要从一句话需求推进到可发布/可部署草稿
- 需要强制阶段顺序与人工确认（HITL）
- 对比 MetaGPT/ChatDev「整套流程」，但只想在当前 IDE Agent 内执行

**不要使用，当：**

- 只要单阶段（改用该阶段技能或 `using-sdlc-skills`）
- 用户要启动 MetaGPT/ChatDev 多 Agent 公司模拟（本库不提供）

## 流程

1. **读剧本与工件表**，确认业务仓库中 `docs/sdlc/`（或约定路径）可写。
2. **声明裁剪**：哪些序号跳过/豁免，写明理由。
3. **逐步执行 01→…→09（10 按需）**：
   - 加载对应技能全文并遵守其红线
   - 写出该步工件（模板见 `agent-skills/templates/artifacts/`）
   - **门禁：** 展示工件摘要，等待用户确认后再进入下一步（后台代理场景：记录 `gate=auto-approved` 假设并列出风险）
4. **中段（06）** 委托 Superpowers：计划 → TDD/实现 → verification；把命令证据写入 `A-VERIFY`。
5. **07–09** 强调可执行检查（build/test/config validate），禁止只交空文档。
6. **收尾：** 给出工件索引表与未决问题；偏好技能可在 06 叠加。

### 决策点

| 条件 | 行动 |
|------|------|
| 用户说「一口气做完别问我」 | 仍逐步产出工件，门禁改为批量确认点（每 2–3 步一停）或标记 auto 风险 |
| 已有部分工件 | 从下一缺失门禁序号恢复（resume） |
| 需要多角色并行 | 说明本库为单 Agent SOP；真正并行请用外部多 Agent 框架 |

## SOP 输入 / 输出

- **输入：** 一句话需求或已有工件路径
- **输出：** 剧本覆盖范围内的 `A-*` 工件集合 + 索引

## 红线

- 禁止跳过门禁却声称「已按全流程完成」
- 禁止在本技能内实现多智能体调度器
- 禁止无 `A-VERIFY`（或豁免说明）进入发布

## 交付物检查

- [ ] 每步有对应工件或明确跳过理由
- [ ] 门禁确认记录存在
- [ ] 最终索引可点击/可路径访问
