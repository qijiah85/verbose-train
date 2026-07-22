---
name: gathering-requirements
description: >
  Use when clarifying product or engineering requirements, defining scope,
  writing user stories, or establishing acceptance criteria before design or coding.
  Triggers: requirements, PRD, user story, acceptance criteria, 需求, 范围, 验收标准.
---

# Gathering Requirements

## 概述

把模糊诉求收敛为**可验证的需求**：目标、非目标、用户故事、验收标准与边界。未通过本阶段验收前，不进入大规模设计或实现。

## 适用场景

**使用，当：**

- 用户描述了想法但缺少范围或验收标准
- 需要区分 must / should / later
- 多方理解可能不一致，需要书面对齐

**不要使用，当：**

- 需求已文档化且本次只是实现已知验收项
- 任务纯属线上应急（先用 `handling-incidents` 止血，复盘再补需求）

## 流程

1. **确认问题**：谁痛、现在怎么做、失败代价是什么。
2. **划定范围**：
   - 目标（要达成什么）
   - 非目标（明确不做）
   - 约束（时间、技术、合规、依赖系统）
3. **写出用户故事**（或等价条目）：角色 + 动机 + 价值。
4. **为每条 must 写验收标准**：可观察、可测试（Given/When/Then 或检查清单）。
5. **列出开放问题**：未知项单独列出；阻塞项必须提问，不可静默假设。
6. **请用户确认**（或在后台代理场景：记录假设并标为「默认假设」）后再进入设计技能。

### 决策点

| 条件 | 行动 |
|------|------|
| 存在多种产品解释 | 列出选项与取舍，不擅自选定 |
| 只能做最小切片 | 定义 MVP must，其余进 later |
| 涉及接口形态 | 需求确认后交给 `designing-apis` |

## 红线

- 禁止用实现细节冒充需求（「用 Redis」不是需求，除非约束如此）
- 禁止验收标准不可验证（「体验更好」「尽量快」）
- 禁止把 later 项偷偷塞进当前实现范围

## SOP 输入 / 输出

- **输入：** 用户一句话诉求或访谈笔记
- **输出：** `A-PRD`（模板 `agent-skills/templates/artifacts/a-prd.md`）

## 阶段门禁

未形成可验证验收标准前，不得宣称可进入架构/编码（除非 `gate=waived`）。

## 交付物检查

- [ ] 目标与非目标已写明
- [ ] must 项均有验收标准
- [ ] 开放问题已列出或已关闭
- [ ] `A-PRD` 已落盘或会话内等价块已确认
- [ ] 下一步技能已声明（通常是设计或计划）

## 示例

### 输入

「用户要能收藏商品。」

### 期望行为

产出：目标/非目标、故事、验收（如登录用户可增删查收藏；未登录返回 401）、开放问题（是否跨设备同步），然后建议 `designing-apis` 或架构技能。
