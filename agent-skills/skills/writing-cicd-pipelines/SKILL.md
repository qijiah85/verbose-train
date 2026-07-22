---
name: writing-cicd-pipelines
description: >
  Use when adding or updating CI/CD workflows for test, build, and release
  automation after the app can be verified locally. Triggers: CI, CD, GitHub
  Actions, pipeline, 流水线, 持续集成, 持续部署.
---

# Writing CI/CD Pipelines

## 概述

把本地可验证流程固化为**流水线草稿**（吸收 DevOpsGPT / AI-SDLC 的部署一等公民）。默认产出 GitHub Actions 风格工作流说明与文件；其他 CI 系统按同等结构改写。产出 `A-CICD`。

## 适用场景

**使用，当：**

- 已有测试/构建命令，需要 PR 自动校验
- 需要发布流水线草稿（手动 approve 的 deploy job 可接受）

**不要使用，当：**

- 项目尚无任何验证命令（先实现与 verification）
- 用户明确只要容器文件不要 CI

## 流程

1. **收集命令：** lint/test/build/镜像构建（来自 README 或 `A-VERIFY` / `A-CONTAINER`）。
2. **定触发：** PR、main、tag；密钥与环境保护规则。
3. **最小流水线：**
   - `verify`：安装依赖 → 测试（失败即红）
   - 可选 `build-image`：仅在验证后
   - 可选 `deploy`：默认 `workflow_dispatch` 或 environment 审批，避免自动推生产
4. **编写 workflow 文件**（如 `.github/workflows/ci.yml`）并在 `A-CICD` 说明。
5. **可执行验证：** 能用 `actionlint` 或至少静态检查 YAML；说明需在宿主 CI 上观察首次运行。
6. **交接 `preparing-releases`：** 版本标签与 changelog 如何触发发布。

## SOP 输入 / 输出

- **输入：** `A-VERIFY`；可选 `A-CONTAINER`
- **输出：** `A-CICD` + CI 配置文件

## 阶段门禁

无本地/已记录验证命令，不得空造「肯定能过」的流水线。

## 红线

- 禁止默认自动部署生产且无审批/无回滚说明
- 禁止在日志中打印密钥
- 禁止复制无关的巨型企业流水线模板造成不可维护

## 交付物检查

- [ ] PR 级 verify job 存在
- [ ] 部署路径安全默认（手动或环境保护）
- [ ] `A-CICD` 写清触发与所需 secrets 名称（不含值）
