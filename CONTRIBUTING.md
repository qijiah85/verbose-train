# 贡献指南

感谢你为本仓库贡献规范或 Agent 技能。

## 贡献类型

| 类型 | 放置位置 | 说明 |
|------|----------|------|
| 规范文档 | `specifications/<category>/` | 编码、API、架构、流程等长期标准 |
| Agent 技能 | `agent-skills/skills/<skill-name>/` | 可被 Agent 加载的技能包（流程或偏好） |
| SDLC 地图 | `agent-skills/catalogs/sdlc/` | 新阶段技能须登记到阶段对照表 |
| 项目文档 | `docs/` | 仓库说明、SDLC 概览、命名、风格等 |
| 示例 | `examples/` | 演示用途的完整样例 |

新增**流程技能**时：标明所属 SDLC 阶段，并更新 [`agent-skills/catalogs/sdlc/`](./agent-skills/catalogs/sdlc/) 与技能 README 索引。  
新增**偏好技能**时：在索引中归入「偏好」组，避免写成强制全员流程。  
Superpowers 已覆盖的中段流程：不要在 `skills/` 再拷平行全文。

## 提交流程

1. Fork 或从最新 `main` 创建分支：`cursor/<short-description>-xxxx`
2. 从对应模板复制文件并填写内容
3. 更新相关目录的 `README.md` 索引（如新增分类或公开技能）
4. 自检命名、风格与链接是否有效
5. 提交 Pull Request，说明变更目的与适用范围

## 内容要求

- **单一职责**：一篇规范或一个技能只解决一类问题
- **可执行**：写清何时使用、步骤、禁止事项与验收标准
- **可发现**：`description` / 摘要要包含触发场景关键词
- **风格一致**：遵循 [`docs/documentation-style-guide.md`](./docs/documentation-style-guide.md)
- **命名合规**：遵循 [`docs/naming-conventions.md`](./docs/naming-conventions.md)

## 审查要点

审查者重点检查：

- 分类是否正确
- 是否与现有规范/技能重复或冲突
- 模板必填字段是否完整
- 示例是否可运行或可照抄使用

## 许可

贡献内容默认采用本仓库的 [Apache License 2.0](./LICENSE)。
