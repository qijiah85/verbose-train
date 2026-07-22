---
name: modeling-data
description: >
  Use when designing entities, relationships, constraints, or migration concerns
  before implementation. Triggers: data model, ER, schema, migration, 数据模型,
  表结构, 实体关系.
---

# Modeling Data

## 概述

把领域对象落实为**可实现的数据模型**（实体、关系、约束、迁移注意），产出 `A-DATA`。吸收 MetaGPT「数据结构」工件，但不生成无关 ORM 样板除非进入实现阶段。

## 适用场景

**使用，当：**

- PRD 已定，需要持久化结构或领域模型
- API 设计前需对齐资源与存储形态
- 变更涉及破坏性迁移

**不要使用，当：**

- 需求未清（先 `gathering-requirements`）
- 纯临时缓存/无状态处理且明确无持久化

## 流程

1. **从 `A-PRD` 提取名词与不变式**（必须为真的业务规则）。
2. **列实体与关系**；标出聚合根与生命周期。
3. **字段与约束：** 唯一性、空值、枚举、软删 vs 硬删。
4. **一致性与访问模式：** 读多写多、幂等写入、是否需要事务边界。
5. **迁移策略：** 向前兼容步骤；禁止的破坏性一步到位（除非豁免）。
6. **写入 `A-DATA`**，并指出对 `A-API` / 实现的影响。
7. **门禁：** 用户确认后再进入 API 或计划。

## SOP 输入 / 输出

- **输入：** `A-PRD`；可选 `A-ARCH`
- **输出：** `A-DATA`（模板 `templates/artifacts/a-data.md`）

## 阶段门禁

缺 `A-PRD` 时不得把技术表结构当成需求。

## 红线

- 禁止过早为「未来可能」加宽表/万能 JSON 而无不变式
- 禁止静默破坏性迁移
- 禁止在未确认模型时大量生成迁移文件（实现阶段再做）

## 交付物检查

- [ ] 实体与关系完整覆盖 must 故事
- [ ] 关键约束可测试
- [ ] 迁移风险已写明
