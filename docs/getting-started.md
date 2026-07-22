# 快速开始

本仓库是**软件工程全生命周期 AI 技能集**：规范给人读，技能给 Agent 用。按你的目标选路径即可。

## 我要按生命周期使用技能

1. 读概览：[`sdlc-overview.md`](./sdlc-overview.md)
2. 查阶段地图：[`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)
3. 不确定阶段时，加载 [`using-sdlc-skills`](../agent-skills/skills/using-sdlc-skills/)
4. 中段（计划 / TDD / 审查）需安装 Superpowers：[`superpowers.md`](./superpowers.md)

## 我要写规范

1. 确定分类（`coding` / `api` / `architecture` / `process` / 自定义）
2. 复制模板：

```bash
cp specifications/templates/specification-template.md \
   specifications/<category>/<doc-name>.md
```

3. 填写标题、状态、适用范围、正文与修订记录
4. 在 `specifications/README.md` 的索引中补充条目（可选但推荐）

参考完整示例：[`examples/specifications/sample-coding-standard.md`](../examples/specifications/sample-coding-standard.md)

## 我要写 Agent 技能

1. 用 `kebab-case` 确定技能名，例如 `gathering-requirements`
2. 创建目录并复制模板：

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

3. 填写 YAML frontmatter（`name`、`description`）与正文流程
4. 在 [`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/) 与技能 README 登记阶段
5. 如需辅助文件，放在同一技能目录下并在 `SKILL.md` 中引用

参考完整示例：[`examples/agent-skills/hello-world/SKILL.md`](../examples/agent-skills/hello-world/SKILL.md)

## 使用 Superpowers（外部方法论）

工程中段流程推荐通过插件安装，不要整包拷贝进本仓库。说明与技能索引：

- 指南：[`superpowers.md`](./superpowers.md)
- 目录：[`../agent-skills/catalogs/superpowers/`](../agent-skills/catalogs/superpowers/)

## 推荐阅读顺序

1. [sdlc-overview.md](./sdlc-overview.md)
2. [naming-conventions.md](./naming-conventions.md)
3. [documentation-style-guide.md](./documentation-style-guide.md)
4. [superpowers.md](./superpowers.md)（若使用编码 Agent 工作流）
5. [../CONTRIBUTING.md](../CONTRIBUTING.md)
