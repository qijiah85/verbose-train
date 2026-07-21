---
title: Git 提交信息格式规范
category: coding
status: active
version: 1.0.0
tags: [git, commit, style-guide]
updated: 2026-07-21
---

# Git 提交信息格式规范

## 目录

- [1. 引言](#1-引言)
- [2. 规范目的与意义](#2-规范目的与意义)
- [3. 消息格式](#3-消息格式)
- [4. 类型（Type）](#4-类型type)
- [5. 主题（Subject）](#5-主题subject)
- [6. 内容（Body）](#6-内容body)
- [7. 页脚（Footer）](#7-页脚footer)
- [8. 书写规范](#8-书写规范)
- [9. 常见错误示例](#9-常见错误示例)
- [10. 正确示范](#10-正确示范)
- [11. 实际应用场景](#11-实际应用场景)
- [12. 总结](#12-总结)

---

## 1. 引言

在团队协作开发过程中，Git 提交信息是代码变更的重要记录。一份规范、清晰的提交信息不仅能够帮助团队成员快速了解代码变更的内容和原因，还能提高代码审查的效率，便于后续的问题追踪和版本回溯。

本规范基于行业最佳实践，参考了 Udacity Git Commit Message Style Guide 及社区成熟经验，旨在为团队提供统一的 Git 提交信息格式标准。

---

## 2. 规范目的与意义

### 2.1 目的

- 统一团队提交信息格式，提高代码仓库的可读性
- 便于快速理解代码变更的类型、内容和影响范围
- 支持自动化工具（如 changelog 生成器）的正确解析
- 提升团队协作效率和代码质量

### 2.2 意义

- **清晰的历史记录**：规范的提交信息使 `git log` 输出更加清晰易读
- **高效的代码审查**：审查者能够快速把握变更要点，减少沟通成本
- **自动化工作流**：支持自动生成版本变更日志、关联 Issue 等功能
- **知识传承**：新成员能够通过提交历史快速了解项目演进过程

---

## 3. 消息格式

提交消息由三部分组成，各部分之间用空行分隔：

```
type: subject

body

footer
```

| 组成部分 | 是否必需 | 说明 |
|---------|---------|------|
| **type** | 必需 | 提交类型，标识变更的性质 |
| **subject** | 必需 | 简短描述，概括本次提交的核心内容 |
| **body** | 可选 | 详细描述，说明变更的原因、背景和影响 |
| **footer** | 可选 | 页脚信息，通常用于关联 Issue 或引用相关提交 |

---

## 4. 类型（Type）

类型是标题的第一部分，用于标识提交的性质。必须使用以下预定义类型之一：

| 类型 | 说明 | 适用场景 |
|-----|------|---------|
| **feat** | 新特性 | 新增功能、模块或接口 |
| **fix** | Bug 修复 | 修复已知问题或缺陷 |
| **chore** | 日常维护 | 与业务逻辑无关的修改，如依赖升级 |
| **refactor** | 代码重构 | 不改变功能的代码结构调整 |
| **build** | 构建相关 | 构建工具配置、外部依赖变更 |
| **ci** | 持续集成 | CI/CD 流程配置、脚本修改 |
| **docs** | 文档完善 | 文档更新、注释添加 |
| **perf** | 性能优化 | 代码性能改进、算法优化 |
| **project** | 工程化 | gitignore 配置、开发环境设置 |
| **revert** | 代码回退 | 撤销之前的提交 |
| **style** | 代码格式 | 格式化调整，无逻辑变更 |
| **test** | 测试相关 | 添加或修改测试用例 |

---

## 5. 主题（Subject）

主题是提交信息的核心，用于简要描述本次变更。

### 5.1 格式要求

- **长度限制**：不超过 50 个字符
- **首字母大写**：以大写字母开头
- **结尾无句号**：不要以句号结束
- **动词形式**：使用现在时态的动词，如 `change` 而非 `changed` 或 `changes`

### 5.2 书写原则

- **聚焦结果**：描述"做了什么"，而非"怎么做"
- **简洁明确**：用最少的文字传达核心信息
- **避免模糊**：不使用"fix bug"、"update"等过于笼统的描述

---

## 6. 内容（Body）

Body 是对提交的详细说明，并非所有提交都需要 Body，仅在需要解释变更背景、原因或影响时使用。

### 6.1 格式要求

- **空行分隔**：与标题之间必须留一个空行
- **长度限制**：每行不超过 72 个字符
- **段落分隔**：不同段落之间用空行分隔

### 6.2 书写原则

- **解释原因**：重点说明 *why*（为什么做这个变更）
- **说明影响**：描述变更可能带来的副作用或意外后果
- **结构清晰**：可以使用列表或分点说明复杂内容

---

## 7. 页脚（Footer）

Footer 用于添加补充信息，最常见的用途是关联 Issue 跟踪系统。

### 7.1 常用格式

```
Resolves: #123
See also: #456, #789
Fixes: #321
```

### 7.2 关键词说明

| 关键词 | 说明 |
|-------|------|
| **Resolves** | 表示此提交解决了指定的 Issue |
| **Fixes** | 表示此提交修复了指定的问题 |
| **See also** | 表示相关的其他 Issue 或提交 |

---

## 8. 书写规范

### 8.1 标题规范

1. 首字母必须大写
2. 最多 50 个字符
3. 不要用句号结束标题行
4. 使用现在时态动词

### 8.2 Body 规范

1. 每行最多 72 个字符
2. 用空行分隔段落
3. 重点说明变更的原因和影响
4. 可以使用列表（使用 `-` 或 `*` 作为列表项，前面加一个空格）

### 8.3 语言规范

- 建议使用英文书写，便于国际化团队协作
- 使用简洁、专业的语言，避免口语化表达
- 保持时态一致，统一使用现在时态

---

## 9. 常见错误示例

### 错误示例 1：过于简短且模糊

```
update
```

**问题**：没有类型，描述过于笼统，无法了解具体变更内容。

### 错误示例 2：描述冗长

```
fix: Fixed the bug that caused the application to crash when the user clicks the submit button with invalid input
```

**问题**：标题超过 50 个字符限制，应精简描述。

### 错误示例 3：缺少类型

```
添加用户登录功能
```

**问题**：没有明确的类型标识，不利于分类和筛选。

### 错误示例 4：使用过去时态

```
feat: Added new API endpoint for user data
```

**问题**：应使用 `Add` 而非 `Added`。

### 错误示例 5：标题结尾有句号

```
fix: Correct the validation logic.
```

**问题**：标题不应以句号结尾。

---

## 10. 正确示范

### 示例 1：新功能提交

```
feat: Add user authentication module

Implement JWT-based authentication system with refresh token support.
This change includes login, logout and token refresh endpoints.

Resolves: #100
See also: #98, #99
```

### 示例 2：Bug 修复提交

```
fix: Prevent null pointer in user profile page

The null pointer exception occurred when accessing user profile
without a valid session. Added null check before accessing user data.

Fixes: #123
```

### 示例 3：代码重构提交

```
refactor: Extract validation logic into separate module

Move form validation logic from controllers to dedicated validation
service. This improves code reusability and simplifies controller logic.
```

### 示例 4：文档更新提交

```
docs: Update API documentation for v2 endpoints

Add detailed descriptions and examples for all v2 API endpoints.
Include request/response formats and error handling information.
```

### 示例 5：性能优化提交

```
perf: Optimize database query for product list

Replace multiple queries with a single JOIN query. Reduce response
time from 500ms to 100ms for product listing page.
```

### 示例 6：日常维护提交

```
chore: Upgrade React from v17 to v18

Update React and related dependencies to latest stable version.
No breaking changes expected.
```

---

## 11. 实际应用场景

### 场景 1：小型变更

对于简单的单行修复或小改动，可以只使用标题：

```
fix: Correct typo in error message
```

### 场景 2：中等规模变更

对于需要解释背景的变更，使用标题加简短 Body：

```
feat: Add pagination to user list

Implement server-side pagination with page size configuration.
Default page size is set to 20 items.
```

### 场景 3：大型变更

对于涉及多个模块或需要详细说明的变更，使用完整格式：

```
refactor: Restructure project directory layout

Move components to feature-based directory structure.
This change affects:
- src/components -> src/features/*/components
- src/utils -> src/common/utils
- src/styles -> src/common/styles

Update all import paths and configuration files accordingly.

Resolves: #200
See also: #198, #199
```

### 场景 4：代码回退

```
revert: Revert "feat: Add experimental feature"

This reverts commit abc123def456.
The experimental feature caused stability issues in production.
```

---

## 12. 总结

遵循统一的 Git 提交信息格式规范，能够显著提升团队协作效率和代码仓库的可维护性。核心要点如下：

1. **结构清晰**：采用 `type: subject` + `body` + `footer` 的三段式结构
2. **类型明确**：使用预定义的类型标识变更性质
3. **标题简洁**：控制在 50 字符以内，首字母大写，无句号结尾
4. **Body 详实**：解释变更原因和影响，每行不超过 72 字符
5. **Footer 规范**：正确关联 Issue 跟踪系统

建议团队成员在提交代码前，仔细检查提交信息是否符合本规范，共同维护一个清晰、专业的代码历史记录。

---

## 相关文档

- [编码规范目录](./README.md)
- [文档风格指南](../../docs/documentation-style-guide.md)

## 修订记录

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0.0 | 2026-07-21 | 初版发布 |

## 参考资料

- [Udacity Git Commit Message Style Guide](https://udacity.github.io/git-styleguide/)
- [How to Write Better Git Commit Messages](https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/)
- [cbea.ms/git-commit/](https://cbea.ms/git-commit/)
