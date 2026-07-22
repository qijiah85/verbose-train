# 规范文档（Specifications）

存放各类**长期生效**的规范与标准（给人读；Agent 技能可引用）。按主题分类，一篇文档只覆盖一个主题。

> **与定位的关系：** 本仓库是「可加载技能 + 规范知识库」。技能侧已覆盖 SDLC SOP；规范侧当前为**起步集**（种子文档 + 分类骨架），不是「已写全所有工程标准」。新增规范请按分类补全并更新下方索引。

一次性项目交付物（PRD、发布单等）属于**业务仓库**的 SOP 工件（见 [`../docs/sop-artifacts.md`](../docs/sop-artifacts.md)），不要当作本目录的长期规范。

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
| [git-commit-message-style-guide.md](./coding/git-commit-message-style-guide.md) | coding | active | Git 提交信息格式规范 |
| [software-delivery-process.md](./process/software-delivery-process.md) | process | active | 交付过程原则（起步，对齐 SOP） |

流程/发布的**可执行**步骤优先看 Agent 技能与 SOP；本目录沉淀团队选定后的长期条文。

示例文档见 [`../examples/specifications/`](../examples/specifications/)。
