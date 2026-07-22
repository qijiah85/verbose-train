# A-CICD 模板

- **工件 ID:** `A-CICD`
- **路径建议:** `docs/sdlc/08-cicd.md`
- **配套文件：** 如 `.github/workflows/ci.yml`

## 触发

- PR：
- 默认分支：
- Tag / 手动：

## Jobs

| Job | 作用 | 所需 secrets（名称，不含值） |
|-----|------|------------------------------|
| verify | 测试/构建 | |
| build-image（可选） | 镜像 | |
| deploy（可选） | 部署；默认需审批 | |

## 本地/静态检查

```bash
# 若可用
actionlint
```

## 安全默认

- [ ] 生产部署非默认自动
- [ ] 密钥不入日志说明已写
