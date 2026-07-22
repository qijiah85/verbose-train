---
name: using-sdlc-skills
description: >
  Use when starting a task, unsure which engineering phase applies, or needing to
  route work across requirements, design, implementation, release, or operations.
  Triggers: SDLC, lifecycle, which skill, 全生命周期, 选技能, 需求到运维.
---

# Using SDLC Skills

## 概述

本技能是本仓库的**阶段路由器**：先判定软件工程阶段，再加载对应流程技能（自有或 Superpowers），避免一上来就写代码或跳过需求/设计。

## 适用场景

**使用，当：**

- 用户提出新功能、改造、故障或发布相关请求，尚未明确阶段
- 需要按「需求 → 设计 → 实现 → 发布 → 运维」选技能
- 同时存在多个可能技能，需要排序

**不要使用，当：**

- 用户已明确指定某个技能并只要执行该技能
- 任务仅是编辑本仓库文档/索引且不涉及工程阶段判断

## 流程

1. **复述目标**：用一两句话确认用户要什么，以及成功长什么样。
2. **判定阶段**（选一个主阶段；可标注次要阶段）：

| 信号 | 主阶段 | 首选技能 |
|------|--------|----------|
| 范围不清、缺验收标准、在争论「要不要做」 | 需求 | `gathering-requirements` |
| 模块边界、技术选型、数据流、系统图 | 设计 | `designing-architecture` |
| 接口路径、错误码、契约、兼容性 | 设计 | `designing-apis` |
| 已有设计，要拆任务/写计划 | 计划 | Superpowers: `writing-plans`（创意未澄清则先 `brainstorming`） |
| 写代码、改实现、加测试 | 实现 | Superpowers: `test-driven-development` + 计划执行类技能 |
| Bug、测试红、异常行为 | 质量 | Superpowers: `systematic-debugging` |
| 版本、changelog、回滚、上线检查 | 发布 | `preparing-releases` |
| 线上故障、降级、复盘 | 运维 | `handling-incidents` |

3. **声明路由**：明确写出「当前阶段 → 将加载的技能」；若依赖 Superpowers，提醒需已安装插件（见 `docs/superpowers.md`）。
4. **加载并执行**该技能；未完成当前阶段验收前，不跳到更后的阶段。
5. **编码时可选叠加**偏好技能 `karpathy-guidelines`（不替代流程技能）。

### 决策点

| 条件 | 行动 |
|------|------|
| 同时缺需求与设计 | 先 `gathering-requirements`，再设计技能 |
| 用户只要「快点改代码」但验收标准缺失 | 仍先补最小验收标准，再实现 |
| 阶段属于 Superpowers 中段 | 使用外部技能，不在本库臆造平行流程 |

## 红线

- 禁止在未判定阶段时直接大规模改代码
- 禁止把偏好技能当成完整 SDLC 流程
- 禁止为「赶进度」跳过需求/设计验收（除非用户明确只要一次性草稿且接受返工）

## 示例

### 输入

「给我们做一个用户积分系统，顺便把接口和上线方案也定了。」

### 期望行为

1. 判定主阶段为需求（范围与验收未定）
2. 声明：`需求 → gathering-requirements`，随后设计 → `designing-architecture` / `designing-apis`
3. 不立即写实现代码

## 相关

- 阶段地图：`agent-skills/catalogs/sdlc/`
- 概览：`docs/sdlc-overview.md`
