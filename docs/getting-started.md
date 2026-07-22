# 快速开始

本仓库是 **可加载技能 + 规范知识库**：SOP 工件 + 阶段技能 + 编号 Playbook。规范给人读，技能给 Agent 用。

## 0. 先安装技能

按 [`installing-skills.md`](./installing-skills.md) 把 `agent-skills/skills/` 链到 Cursor / Claude 可发现的目录。未安装时，对话里点名技能也不会加载本库正文。

## 三条路径

### A. 端到端（推荐新手）

1. 读 [`sop-artifacts.md`](./sop-artifacts.md) 与 [编号剧本](../agent-skills/playbooks/full-sdlc/)
2. 在 Agent 中说：使用 `running-sdlc-playbook`，目标：\<一句话需求\>
3. 每阶段确认工件后再继续

### B. 单阶段

1. [`sdlc-overview.md`](./sdlc-overview.md) 选阶段
2. 或加载 [`using-sdlc-skills`](../agent-skills/skills/using-sdlc-skills/) 自动路由

### C. 只要中段工程纪律

安装 Superpowers：[`superpowers.md`](./superpowers.md)

## 我要写规范

```bash
cp specifications/templates/specification-template.md \
   specifications/<category>/<doc-name>.md
```

## 我要写 Agent 技能

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

填写后：登记 [`../agent-skills/catalogs/sdlc/`](../agent-skills/catalogs/sdlc/)，流程技能补 SOP 输入/输出。

## 推荐阅读顺序

1. [installing-skills.md](./installing-skills.md)
2. [sdlc-overview.md](./sdlc-overview.md)
3. [sop-artifacts.md](./sop-artifacts.md)
4. [community-landscape.md](./community-landscape.md)
5. [naming-conventions.md](./naming-conventions.md)
6. [documentation-style-guide.md](./documentation-style-guide.md)
7. [../CONTRIBUTING.md](../CONTRIBUTING.md)
