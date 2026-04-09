# 发布流程（最全版）

## 首次发布

```bash
git init
git add .
git commit -m "chore: initialize docs"
git branch -M main
git remote add origin <你的仓库地址>
git push -u origin main
```

## GitHub 页面设置

- 进入仓库 `Settings` → `Pages`
- `Build and deployment` 选择 `GitHub Actions`

## 自动部署触发条件

满足任一条件会触发部署：

1. push 到 `main`
2. 手动触发 `workflow_dispatch`

## 部署完成后访问

`https://<用户名>.github.io/<仓库名>/`

> 如果你改了默认分支，请同步修改 `.github/workflows/deploy-docs.yml` 中的触发分支。
