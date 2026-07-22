# A-CONTAINER 模板

- **工件 ID:** `A-CONTAINER`
- **路径建议:** `docs/sdlc/07-container.md`
- **配套文件：** `Dockerfile`、可选 `compose.yaml`、`.dockerignore`

## 构建

```bash
# 示例：替换为实际命令
docker build -t <image>:<tag> .
```

## 运行

```bash
# 示例
docker run --rm -p <port>:<port> --env-file .env.example <image>:<tag>
```

## Compose（如有）

```bash
docker compose config
docker compose up --build -d
```

## 配置项（无密钥值）

| 变量 | 用途 | 必填 |
|------|------|------|
| | | |

## 验证记录

| 检查 | 结果 |
|------|------|
| build | |
| 冒烟 | |
