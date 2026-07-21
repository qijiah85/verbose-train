# 快速开始

本仓库同时管理两类内容：**规范文档**与 **Agent 技能**。按你要贡献的内容选择路径即可。

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

1. 用 `kebab-case` 确定技能名，例如 `systematic-debugging`
2. 创建目录并复制模板：

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

3. 填写 YAML frontmatter（`name`、`description`）与正文流程
4. 如需辅助文件，放在同一技能目录下并在 `SKILL.md` 中引用

参考完整示例：[`examples/agent-skills/hello-world/SKILL.md`](../examples/agent-skills/hello-world/SKILL.md)

## 推荐阅读顺序

1. [naming-conventions.md](./naming-conventions.md)
2. [documentation-style-guide.md](./documentation-style-guide.md)
3. [../CONTRIBUTING.md](../CONTRIBUTING.md)
