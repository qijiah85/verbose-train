# 把本仓库 Skills 装进 Cursor / Claude

本仓库是**可加载技能 + 规范知识库**，不是 Agent 运行时。技能正文在 `agent-skills/skills/<name>/SKILL.md`；需要拷贝或链接到宿主能发现的目录后，Agent 才会加载。

## 最短路径（推荐）

### Cursor

1. 克隆本仓库（或已有本地拷贝）。
2. 将自有技能链到 Cursor 项目或用户技能目录（二选一）：

**项目级（仅当前业务仓库）：**

```bash
# 在业务仓库根目录执行
mkdir -p .cursor/skills
ln -s /绝对路径/verbose-train/agent-skills/skills/using-sdlc-skills \
      .cursor/skills/using-sdlc-skills
# 按需继续链接其他技能目录；或一次性：
# ln -s /绝对路径/verbose-train/agent-skills/skills/* .cursor/skills/
```

**用户级（对本机多个项目生效，路径以本机 Cursor 文档为准）：**

```bash
mkdir -p ~/.cursor/skills
ln -s /绝对路径/verbose-train/agent-skills/skills/using-sdlc-skills \
      ~/.cursor/skills/using-sdlc-skills
```

3. 新开 Agent 对话，试触发：

```text
使用 using-sdlc-skills：帮我判断下面任务属于哪个阶段，并给出下一步技能。
任务：给收藏功能补 API 与上线检查清单。
```

4. 中段计划/TDD/审查另装 Superpowers 插件：见 [`superpowers.md`](./superpowers.md)。

> 若你的 Cursor 版本使用「Rules / Skills」市场或不同目录名，以当前 Cursor 官方说明为准；原则不变：**每个技能一个含 `SKILL.md` 的目录，放到宿主会扫描的 skills 路径下。**

### Claude Code

1. 将技能目录放入 Claude 可加载的 skills 路径（常见为项目 `.claude/skills/` 或用户级 skills 目录，以当前 Claude Code 文档为准）：

```bash
mkdir -p .claude/skills
ln -s /绝对路径/verbose-train/agent-skills/skills/gathering-requirements \
      .claude/skills/gathering-requirements
```

2. 对话中点名技能或描述触发场景（见各技能 frontmatter `description`）。
3. Superpowers：按 [`superpowers.md`](./superpowers.md) 用插件安装，勿从本库拷全文。

## 建议最少安装集

| 目的 | 技能 |
|------|------|
| 路由 | `using-sdlc-skills` |
| 端到端 | 再加 `running-sdlc-playbook`（并可读 `agent-skills/playbooks/full-sdlc/`） |
| 日常缺口 | `gathering-requirements`、设计三类、`preparing-releases`、`handling-incidents` |
| 部署准备 | `containerizing-applications`、`writing-cicd-pipelines` |
| 编码姿态（可选） | `karpathy-guidelines` |

`playbooks/` 与 `catalogs/` **不是**可加载技能包：给人读的编排/索引；Agent 执行时仍加载 `skills/*/SKILL.md`。

## 规范文档怎么用

`specifications/` 给人（也可给 Agent 当参考）对齐长期标准，**不必**拷进 skills 目录。技能步骤里用相对链接引用即可（例如提交信息规范）。

## 验证是否装好

- Agent 能根据 `description` 主动匹配，或接受「使用 \<skill-name\>」指令
- 打开对应 `SKILL.md` 后按流程产出 SOP 工件（见 [`sop-artifacts.md`](./sop-artifacts.md)）
- 未安装时，Agent 不应假装「已加载本库全套技能」

## 相关

- 定位与非目标：[`../README.md`](../README.md)
- 阶段地图：[`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)
- 社区边界：[`community-landscape.md`](./community-landscape.md)
