# codex-cli-guide

一个可直接发布到 **GitHub Pages** 的文档项目模板（中文），并且会自动输出当前仓库对应的在线文档地址。

## 你能得到什么

- 基于 **MkDocs + Material** 的文档站点
- push 到 `main` 后自动部署到 GitHub Pages
- 自动根据当前仓库生成线上地址：
  - `https://<用户名>.github.io/<仓库名>/`

## 项目结构

```text
.
├── .github/workflows/deploy-docs.yml   # 自动部署工作流
├── docs/
│   ├── index.md                        # 首页
│   ├── getting-started.md              # 快速开始
│   ├── publish.md                      # 发布流程
│   ├── deployment.md                   # 部署细节
│   └── troubleshooting.md              # 常见问题
├── scripts/render-mkdocs-config.sh     # 动态生成 mkdocs 配置
├── mkdocs.yml                          # 模板配置（包含占位符）
└── requirements.txt                    # 文档依赖
```

## 一次性发布步骤

### 1) 创建并推送 GitHub 仓库

```bash
git init
git add .
git commit -m "chore: init docs site"
git branch -M main
git remote add origin <你的仓库地址>
git push -u origin main
```

### 2) 启用 GitHub Pages

1. 打开仓库：`Settings` → `Pages`
2. 在 `Build and deployment` 中设置：`Source = GitHub Actions`
3. 保存

### 3) 等待 Actions 完成

进入 `Actions` 页面，等待 `Deploy docs to GitHub Pages` 工作流通过。

### 4) 访问在线文档

默认地址：

- `https://<用户名>.github.io/<仓库名>/`

例如仓库 `alice/codex-cli-guide` 对应：

- `https://alice.github.io/codex-cli-guide/`

## 本地预览（可选）

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
./scripts/render-mkdocs-config.sh
mkdocs serve -f mkdocs.generated.yml
```

访问 `http://127.0.0.1:8000`。

## 说明

- `mkdocs.yml` 中包含占位符（`__SITE_URL__` / `__REPO_URL__`）。
- CI 会在构建前自动渲染为 `mkdocs.generated.yml`，确保线上链接和仓库地址永远匹配当前项目。
