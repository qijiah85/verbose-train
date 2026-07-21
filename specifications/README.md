# 规范文档（Specifications）

存放各类长期生效的规范与标准。按主题分类，一篇文档只覆盖一个主题。

## 分类目录

| 目录 | 用途 | 示例主题 |
|------|------|----------|
| [`coding/`](./coding/) | 编码风格、语言约定、代码审查标准 | Python 风格、提交信息格式 |
| [`api/`](./api/) | API 设计与接口约定 | REST 指南、错误码规范 |
| [`architecture/`](./architecture/) | 架构原则与系统设计约束 | 分层规则、依赖边界 |
| [`process/`](./process/) | 协作流程与工程过程 | PR 检查清单、发布流程 |
| [`templates/`](./templates/) | 规范文档模板 | 新建规范时从此复制 |

如需新分类，创建 `kebab-case` 目录，并在本文件登记用途。

## 文件约定

```text
specifications/<category>/<topic>.md
```

- 文件名：`kebab-case.md`
- 推荐包含 YAML frontmatter（`title`、`category`、`status`、`version`、`updated`）
- 从 [`templates/specification-template.md`](./templates/specification-template.md) 复制起步

详见 [`../docs/naming-conventions.md`](../docs/naming-conventions.md)。

## 索引

现行规范列表（随内容增长维护）：

| 文档 | 分类 | 状态 | 说明 |
|------|------|------|------|
| _暂无_ | — | — | 新增规范后在此登记 |

示例文档见 [`../examples/specifications/`](../examples/specifications/)。
