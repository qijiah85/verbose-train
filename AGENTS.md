# AGENTS.md

## Cursor Cloud specific instructions

### 这个仓库是什么

纯文档 / 知识库仓库（`agent-skills-and-specs`）：把 SDLC 全生命周期封装为可加载的 AI Skills（`agent-skills/skills/*/SKILL.md`）+ 人读规范（`specifications/`）+ 外部方法论索引（`agent-skills/catalogs/`）。仓库总览见 `README.md`，贡献流程见 `CONTRIBUTING.md`，上手路径见 `docs/getting-started.md`。

### 没有应用 / 服务 / 构建（重要）

- 仓库里**只有 Markdown**（约 35 个 `.md`），外加 `.editorconfig` / `.gitignore` / `LICENSE`。**没有**任何源代码、`package.json`、锁文件、Makefile、Dockerfile、CI 配置或依赖清单。
- 因此**没有依赖要装、没有服务要起、没有东西要 build/serve**。不要去找 `npm run dev` / 后端服务 / 数据库——它们不存在。update script 是 no-op。
- "开发" = 编辑 Markdown；"使用技能" = 把 `SKILL.md` 拷到 Agent 支持的目录或按各工具方式安装（本仓库不启动任何模型/运行时）。

### 如何验证改动（本仓库的 "测试"）

本仓库没有测试框架。端到端验证 = 静态检查 Markdown 的正确性，两条核心不变量：

1. **内部相对链接必须全部可达**（知识库靠互链导航，这是核心价值）。
2. **每个 `agent-skills/skills/*/SKILL.md` 必须有 YAML frontmatter 且含 `name` 与 `description`**（否则 Agent 无法加载该技能）。

可用 `python3`（3.12）或 `node`（22）临时写脚本校验上述两点；这类校验脚本是一次性的，不需要提交进仓库。新增/修改内容后请同时更新相关 `README.md` 索引与 `agent-skills/catalogs/sdlc/`（见 `CONTRIBUTING.md`）。

### 新增内容的标准流程

见 `docs/getting-started.md` 与 `README.md` 中的模板拷贝命令（从 `specifications/templates/` 或 `agent-skills/templates/SKILL.md` 复制），不在此重复。

### 约定

- 目录/文件用 `kebab-case`，技能入口固定为 `SKILL.md`；正文默认简体中文，命令/路径/专有名词保留英文（见 `docs/naming-conventions.md`）。
