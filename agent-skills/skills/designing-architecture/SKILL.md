---
name: designing-architecture
description: >
  Use when designing system structure, module boundaries, data flow, or choosing
  technical approaches before implementation. Triggers: architecture, system design,
  module boundaries, tech choice, 架构, 系统设计, 模块边界, 技术选型.
---

# Designing Architecture

## 概述

在实现前给出**可落地的架构决策**：边界、组件职责、数据流、关键取舍与否决项。目标是让后续计划与编码有稳定骨架，而不是画无法验证的大图。

## 适用场景

**使用，当：**

- 新系统或新子系统需要划分模块
- 存在多种技术路线需要取舍
- 需求已清，但「怎么拆、怎么连」未定

**不要使用，当：**

- 需求仍模糊（先 `gathering-requirements`）
- 仅改单个函数/局部 bug（直接调试或 TDD）
- 只需定义 HTTP/RPC 契约细节（用 `designing-apis`）

## 流程

1. **重述约束**：来自需求的质量属性（延迟、一致性、安全、成本）与硬约束。
2. **画边界**：识别外部 Actor、本系统职责、明确非职责。
3. **提出 2–3 种结构方案**：每案说明组件、数据流、主要风险。
4. **推荐一案并写 ADR 摘要**：
   - 决策是什么
   - 为什么（含否决项）
   - 后果（复杂度、运维、迁移）
5. **列出接口与数据触点**：哪些需进入 `designing-apis` / 数据模型（planned）
6. **定义验证方式**：如何用spike、测试或指标证明架构假设。
7. **确认后再**进入 Superpowers `writing-plans` 或实现。

### 决策点

| 条件 | 行动 |
|------|------|
| 方案差异主要在接口形状 | 收敛架构后转 `designing-apis` |
| 现有系统改造 | 先画现状（as-is）再画 to-be，标迁移步骤 |
| 用户只要「简单能跑」 | 选最少组件方案，拒绝提前微服务化 |

## 红线

- 禁止无约束的「未来灵活」抽象层
- 禁止在未比较方案时直接开写大量脚手架
- 禁止把偏好技术栈写成唯一真理而不记录取舍

## 交付物检查

- [ ] 边界与职责清晰
- [ ] 至少比较过两种合理方案（或说明为何只有一种可行）
- [ ] 推荐方案含否决项与后果
- [ ] 下一步（API / 计划 / spike）已声明

## 示例

### 输入

「积分系统要能发积分、扣积分、查余额，以后可能接商城。」

### 期望行为

给出单体模块 vs 独立服务等方案比较，推荐当前阶段的最小结构，明确与商城的边界为后期扩展，并指出账户一致性与幂等为关键风险。
