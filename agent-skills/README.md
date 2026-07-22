# Agent 技能（Agent Skills）

存放可被 AI Agent 加载的技能包。每个技能是一个目录，入口文件固定为 `SKILL.md`。

按**软件工程全生命周期 + SOP 工件**组织；阶段地图见 [`catalogs/sdlc/`](./catalogs/sdlc/)，编号剧本见 [`playbooks/full-sdlc/`](./playbooks/full-sdlc/)。

## 目录结构

```text
agent-skills/
├── skills/           # 正式技能（可加载）
├── playbooks/        # 编号链式剧本（指向 skills）
├── catalogs/         # SDLC 地图 / Superpowers / 社区项目索引
└── templates/        # 技能模板 + SOP 工件模板
```

## 技能约定

| 项目 | 规则 |
|------|------|
| 目录名 | `kebab-case`，与 frontmatter `name` 一致 |
| 入口文件 | 必须为 `SKILL.md` |
| `description` | 触发条件 + 关键词 |
| SOP | 流程技能应标明输入/输出工件 ID（见 `docs/sop-artifacts.md`） |
| 登记 | 更新 `catalogs/sdlc/`；若进入主路径则更新 playbook |

## 新建技能

```bash
mkdir -p agent-skills/skills/<skill-name>
cp agent-skills/templates/SKILL.md \
   agent-skills/skills/<skill-name>/SKILL.md
```

## 技能索引（按阶段）

| 阶段 | 技能 | 说明 |
|------|------|------|
| 元 / 编排 | [using-sdlc-skills](./skills/using-sdlc-skills/)、[running-sdlc-playbook](./skills/running-sdlc-playbook/) | 路由与端到端门禁 |
| 需求 | [gathering-requirements](./skills/gathering-requirements/) | `A-PRD` |
| 设计 | [designing-architecture](./skills/designing-architecture/)、[modeling-data](./skills/modeling-data/)、[designing-apis](./skills/designing-apis/) | 架构 / 数据 / API |
| 部署准备 | [containerizing-applications](./skills/containerizing-applications/)、[writing-cicd-pipelines](./skills/writing-cicd-pipelines/) | 容器与 CI/CD |
| 发布 | [preparing-releases](./skills/preparing-releases/) | `A-RELEASE` |
| 运维 | [handling-incidents](./skills/handling-incidents/) | `A-INCIDENT` |
| 偏好 | [karpathy-guidelines](./skills/karpathy-guidelines/) | 可选横切 |

中段计划/实现/审查：[`catalogs/superpowers/`](./catalogs/superpowers/)。  
社区项目对照：[`catalogs/community/`](./catalogs/community/)。
