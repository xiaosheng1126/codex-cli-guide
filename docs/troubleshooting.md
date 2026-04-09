# 常见问题

## 1) 访问 404

检查：

- 是否已启用 `Settings -> Pages -> GitHub Actions`
- 默认分支是否为 `main`
- Actions 是否通过

## 2) 样式丢失或资源路径错乱

通常是 `site_url` 错误导致。请确认工作流日志中输出的 `SITE_URL` 正确。

## 3) Workflow 没有触发

确认你推送的是 `main` 分支，或者手动在 Actions 页面点击 `Run workflow`。

## 4) 本地无法安装依赖

如果企业网络有代理限制，可改用可访问 PyPI 的网络环境，或配置镜像源后再执行 `pip install -r requirements.txt`。
