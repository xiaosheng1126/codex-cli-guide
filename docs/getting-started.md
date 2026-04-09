# 快速开始

## 1. 安装依赖

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## 2. 生成当前仓库配置

```bash
./scripts/render-mkdocs-config.sh
```

会生成 `mkdocs.generated.yml`，其中包含当前仓库对应的：

- `site_url`
- `repo_url`

## 3. 本地启动

```bash
mkdocs serve -f mkdocs.generated.yml
```

打开：`http://127.0.0.1:8000`

## 4. 修改文档

编辑 `docs/` 目录中的 Markdown 文件即可，保存后会自动热更新。
