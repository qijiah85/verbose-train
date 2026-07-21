# 命名规范

本文定义本仓库的目录、文件与元数据命名规则。所有新增内容必须遵守。

## 通用规则

| 规则 | 要求 | 示例 |
|------|------|------|
| 大小写 | 一律小写 | `api-design`（✓） / `API-Design`（✗） |
| 分隔符 | 单词间用连字符 `-` | `code-review`（✓） / `code_review`（✗） |
| 字符集 | 仅 `a-z`、`0-9`、`-` | 不含空格、下划线、中文路径名 |
| 长度 | 目录/文件名尽量 ≤ 64 字符 | 清晰优先于过短缩写 |
| 语言 | 路径与文件名使用英文 | 正文可用简体中文 |

## 目录命名

```text
<category>/                 # kebab-case，名词或名词短语
<skill-name>/               # kebab-case，动作或领域短语
```

| 位置 | 约定 | 示例 |
|------|------|------|
| `specifications/<category>/` | 按主题分类 | `coding`、`api`、`architecture`、`process` |
| `agent-skills/skills/<name>/` | 一技能一目录 | `systematic-debugging` |
| 自定义分类 | 先新增目录，再在对应 README 登记 | `specifications/security/` |

新增顶级分类前，应在对应 `README.md` 中说明用途，避免同义重复（如同时存在 `api` 与 `apis`）。

## 文件命名

### 规范文档

```text
specifications/<category>/<topic>.md
```

- 使用 `kebab-case.md`
- 文件名应能独立表达主题，避免 `doc1.md`、`notes.md`、`final.md`
- 版本号不进入文件名；用文档内「状态 / 修订记录」管理演进
- 同一主题只有一份现行规范；历史内容写入修订记录，不另建 `*-v2.md`

**示例：**

- `specifications/coding/python-style-guide.md`
- `specifications/api/rest-api-guidelines.md`
- `specifications/process/pull-request-checklist.md`

### Agent 技能

```text
agent-skills/skills/<skill-name>/SKILL.md
agent-skills/skills/<skill-name>/<supporting-file>
```

| 文件 | 规则 |
|------|------|
| `SKILL.md` | 每个技能的**唯一入口**，文件名固定 |
| 辅助文件 | `kebab-case`，如 `examples.md`、`checklist.md` |
| `name`（frontmatter） | 与目录名一致，且不超过 64 字符 |

**示例：**

```text
agent-skills/skills/code-review/
├── SKILL.md
└── review-checklist.md
```

### 模板与示例

| 类型 | 路径约定 |
|------|----------|
| 规范模板 | `specifications/templates/specification-template.md` |
| 技能模板 | `agent-skills/templates/SKILL.md` |
| 规范示例 | `examples/specifications/<name>.md` |
| 技能示例 | `examples/agent-skills/<skill-name>/SKILL.md` |

## Frontmatter / 元数据字段

### 规范文档（推荐）

```yaml
---
title: 人类可读标题
category: coding | api | architecture | process | <custom>
status: draft | active | deprecated
version: 1.0.0
tags: [tag-one, tag-two]
updated: YYYY-MM-DD
---
```

### Agent 技能（必需）

```yaml
---
name: skill-name
description: 一句话说明做什么、何时用；包含触发关键词
---
```

## 禁止事项

- 不要用日期前缀作为规范正文文件名（如 `2026-07-21-api.md`）
- 不要在仓库根目录散落规范或技能正文
- 不要把多个无关技能塞进同一目录
- 不要使用 `latest`、`new`、`old`、`temp` 等无意义后缀
