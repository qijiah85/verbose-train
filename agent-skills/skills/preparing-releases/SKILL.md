---
name: preparing-releases
description: >
  Use when preparing a versioned release, writing changelogs, checking rollout
  readiness, or defining rollback steps before deploying. Triggers: release,
  deploy, changelog, rollback, semver, 发布, 上线, 回滚, 版本.
---

# Preparing Releases

## 概述

把「代码写完」推进到**可发布**：版本、变更说明、检查清单、回滚与沟通。未完成发布验收前，不宣称已上线。

## 适用场景

**使用，当：**

- 功能合并后准备打 tag / 发版 / 部署
- 需要 changelog、迁移步骤或回滚方案
- 上线前要做就绪检查（配置、开关、监控）

**不要使用，当：**

- 仍在实现或测试失败（先 TDD / debugging / verification）
- 紧急线上故障（先 `handling-incidents`，发布流程事后补）

## 流程

1. **确认可发布基线**：主分支或发布分支上验证命令已通过（引用 Superpowers `verification-before-completion` 的证据要求）。
2. **定版本号**：按语义化版本（破坏 / 兼容功能 / 修复）；说明依据。
3. **写变更说明**：用户可见变化；迁移/配置变更单独成节；已知限制写明。
4. **发布检查清单**（按项目裁剪）：
   - 数据库迁移顺序与是否可逆
   - 功能开关默认值
   - 配置/密钥是否就绪
   - 监控/告警/日志是否覆盖新路径
   - 依赖服务兼容性
5. **回滚方案**：如何回退制品或关开关；数据迁移不可逆时的补偿策略。
6. **执行发布步骤**（按环境：预发 → 生产）；每步留下验证证据。
7. **发布后观察窗口**：约定观察指标与值班；异常则转 `handling-incidents`。

### 决策点

| 条件 | 行动 |
|------|------|
| 仅内部库版本 | 仍要 changelog 与 semver，可简化部署项 |
| 高风险迁移 | 先扩后缩或双写方案，禁止一次性不可逆无备份 |
| 与分支收尾相关 | 可配合 Superpowers `finishing-a-development-branch` |

## 红线

- 禁止无回滚方案的生产发布（除非只读文档类变更且已声明）
- 禁止「先上了再说」跳过验证证据
- 禁止 changelog 只写 `bug fixes` 而无用户可感知描述（有用户影响时）

## SOP 输入 / 输出

- **输入：** `A-VERIFY`；建议 `A-CONTAINER` / `A-CICD`
- **输出：** `A-RELEASE`（模板 `agent-skills/templates/artifacts/a-release.md`）

## 阶段门禁

无验证证据不得发布；无回滚方案不得进生产（只读文档变更可声明例外）。

## 交付物检查

- [ ] 版本号与依据
- [ ] 变更说明 + 迁移/配置说明
- [ ] 检查清单已勾验
- [ ] 回滚步骤可执行
- [ ] `A-RELEASE` 已落盘
- [ ] 发布后观察项已定义

## 示例

### 输入

「积分服务可以上线了吧？」

### 期望行为

核对测试/验证输出，拟定版本与 changelog，列出迁移与回滚，确认监控后再执行部署，而不是直接说「已完成」。
