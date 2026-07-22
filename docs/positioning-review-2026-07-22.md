# 定位审查纪要（2026-07-22）

## 已确认定位

本仓库是 **可加载 Agent Skills + 人读规范知识库**：教 Agent（及人类）按 SOP 干活。

不是：多智能体运行时、Agent 沙箱产品、业务应用/SDK、Superpowers 全文镜像。

## 审查结论（相对该定位）

| 级别 | 问题 | 处置 |
|------|------|------|
| Critical | 缺少本库 skills 安装到 Cursor/Claude 的路径 | 已加 `docs/installing-skills.md` 并挂到 README/getting-started |
| Important | SOP 模板缺 A-PLAN/VERIFY/CONTAINER/CICD/INCIDENT | 已补全 `templates/artifacts/` |
| Important | specifications 过弱却像「完整知识库」 | 标明起步集 + 新增 `software-delivery-process.md` |
| Important | `using-sdlc-skills` 缺 SOP 小节 | 已补齐 |
| Important | Superpowers 子代理叙事过前 | 改为单 Agent 默认、子代理为可选旁路 |
| Minor | skills/playbooks/catalogs 边界、业务仓 `docs/sdlc/` 措辞、示例标注 | 已改 |

## 仍可后续增强（非合并阻塞）

- `specifications/api`、`architecture` 仍可继续补长期条文
- Cursor/Claude 官方 skills 目录名若变更，需跟进 `installing-skills.md`
