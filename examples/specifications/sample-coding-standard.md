---
title: 示例：通用编码约定
category: coding
status: draft
version: 0.1.0
tags: [example, coding]
updated: 2026-07-21
---

# 示例：通用编码约定

> 本文件位于 `examples/`，仅作结构演示。正式规范请放到 `specifications/coding/`。

## 摘要

定义跨语言通用的基础编码约定，降低审阅成本。不替代各语言专属风格指南。

## 何时使用

- 新仓库尚无语言专属规范时，作为默认底线
- 代码审查需要统一的最低标准时

## 何时不使用

- 已有更具体的语言规范且与本文冲突时，以专属规范为准
- 第三方生成代码且无法修改时（记录例外即可）

## 规范正文

### 1. 命名

- 标识符使用项目既定约定；同一模块内保持一致
- 禁止无意义缩写（如 `tmp2`、`data1`），临时变量也应可读

### 2. 函数与模块

- 一个函数只做一件事；过长函数优先拆分
- 模块对外暴露最小必要 API

### 3. 错误处理

- 不吞掉异常；记录足够上下文后再上抛或返回
- 用户可见错误信息避免泄露内部路径与密钥

### 4. 注释

- 注释解释「为什么」，而不是复述「做什么」
- 过时注释必须删除或更新，禁止保留误导信息

## 示例

### 推荐

```python
def calculate_discount(price_cents: int, rate: float) -> int:
    """按比率计算折扣后的价格（分）。"""
    if price_cents < 0:
        raise ValueError("price_cents must be non-negative")
    return int(price_cents * (1 - rate))
```

### 避免

```python
def calc(d, x):
    try:
        return d * x
    except Exception:
        pass
```

## 检查清单

- [ ] 命名在模块内一致
- [ ] 错误路径有处理或明确上抛
- [ ] 无过时或误导性注释

## 相关文档

- [规范模板](../../specifications/templates/specification-template.md)
- [文档风格指南](../../docs/documentation-style-guide.md)

## 修订记录

| 版本 | 日期 | 说明 |
|------|------|------|
| 0.1.0 | 2026-07-21 | 示例初稿 |
