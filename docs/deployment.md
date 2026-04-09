# 部署细节

## 工作流做了什么

1. checkout 仓库
2. 安装 Python 3.11
3. 安装 `requirements.txt`
4. 生成 `mkdocs.generated.yml`
5. 构建静态站点到 `site/`
6. 上传并部署到 GitHub Pages

## 为什么要动态渲染配置

`mkdocs.yml` 是模板配置，含有占位符：

- `__SITE_URL__`
- `__REPO_URL__`
- `__REPO_NAME__`

这样同一套模板可复用在任意仓库，避免手工改错地址。

## 关键环境变量

GitHub Actions 会注入：

- `GITHUB_REPOSITORY`（如 `alice/codex-cli-guide`）
- `GITHUB_REPOSITORY_OWNER`（如 `alice`）

脚本会据此生成最终配置。
