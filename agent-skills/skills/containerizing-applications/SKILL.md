---
name: containerizing-applications
description: >
  Use when packaging an app with Docker/Compose for local run or deploy prep,
  after tests pass. Triggers: Dockerfile, docker compose, containerize, 容器化,
  镜像, 打包.
---

# Containerizing Applications

## 概述

将可运行应用打包为**可构建、可启动**的容器产物（吸收 OpenHands「能跑」与云原生部署技能）。产出 `A-CONTAINER` 与必要的 `Dockerfile` / Compose 片段。默认保持可移植，不绑定特定 K8s 发行版。

## 适用场景

**使用，当：**

- 验证已通过，需要本地一键启动或部署前置镜像
- 需要多服务编排（app + db）的最小 Compose

**不要使用，当：**

- 测试仍失败（先 verification / debugging）
- 用户只要云厂商专有服务定义且拒绝容器（改文档说明例外）

## 流程

1. **确认 `A-VERIFY` 或等价通过证据。**
2. **确定进程模型：** 单一入口命令、环境变量、端口、密钥不进镜像层。
3. **编写最小 Dockerfile：** 多阶段构建（若适用）、非 root（若可行）、`.dockerignore`。
4. **可选 Compose：** 服务依赖、卷、健康检查。
5. **可执行验证（必须跑或写明受限环境无法跑）：**
   - `docker build …`
   - `docker compose config`（若有）
   - 冒烟：容器内健康检查或 curl
6. **写入 `A-CONTAINER`：** 构建/运行命令、端口、配置项、限制。
7. **交接：** 需要流水线则转 `writing-cicd-pipelines`；要上线转 `preparing-releases`。

## SOP 输入 / 输出

- **输入：** `A-VERIFY`；可选 `A-ARCH`
- **输出：** `A-CONTAINER` + 仓库内 Docker 相关文件

## 阶段门禁

无验证证据不得宣称「可部署镜像已就绪」。

## 红线

- 禁止把密钥写进镜像或 compose 明文提交（用 env 文件示例且 gitignore）
- 禁止无关的巨型基础镜像「图省事」而不说明
- 禁止只交空 Dockerfile 注释而不给 build 命令

## 交付物检查

- [ ] 构建/运行命令可复制
- [ ] 验证命令有结果或明确环境限制
- [ ] `A-CONTAINER` 已更新
