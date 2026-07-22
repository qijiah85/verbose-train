# 贡献指南

感谢你为本仓库贡献规范或 Agent 技能。

## 贡献类型

| 类型 | 放置位置 | 说明 |
|------|----------|------|
| 规范文档 | `specifications/<category>/` | 长期标准 |
| Agent 技能 | `agent-skills/skills/<skill-name>/` | 流程 / 编排 / 偏好 |
| Playbook | `agent-skills/playbooks/` | 编号链式剧本（指向 skills） |
| SOP 工件模板 | `agent-skills/templates/artifacts/` | `A-*` 模板 |
| SDLC 地图 | `agent-skills/catalogs/sdlc/` | 阶段/角色/工件登记 |
| 社区对照 | `agent-skills/catalogs/community/`、`docs/community-landscape.md` | 外部项目索引 |
| 项目文档 | `docs/` | 概览与约定 |
| 示例 | `examples/` | 演示样例 |

新增**流程技能**时：写明 SOP 输入/输出工件 ID，更新 sdlc catalog；进入主路径则更新 `playbooks/full-sdlc`。  
新增**偏好技能**时：归入偏好组。  
不要把 MetaGPT/ChatDev 运行时拷进本仓库；中段工程纪律继续依赖 Superpowers 插件。

## 提交流程

1. Fork 或从最新 `main` 创建分支：`cursor/<short-description>-xxxx`
2. 从对应模板复制文件并填写内容
3. 更新相关目录的 `README.md` 索引（如新增分类或公开技能）
4. 自检命名、风格与链接是否有效
5. 提交 Pull Request，说明变更目的与适用范围

不要直接向 `main` 推送。默认分支保护说明见 [`docs/branch-protection.md`](./docs/branch-protection.md)。

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
