# 部署指南

## 前端部署 (GitHub Pages)

### 1. 准备前端代码
```bash
cd frontend
npm install
npm run build
```

### 2. 配置 GitHub Pages
1. 将代码推送到 GitHub 仓库
2. 进入仓库 Settings → Pages
3. 选择 Source: `GitHub Actions`
4. 或选择 Source: `main branch /docs folder`

### 3. 使用 gh-pages 自动部署
```bash
# 安装 gh-pages
npm install --save-dev gh-pages

# 在 package.json 中添加部署脚本
"scripts": {
  "deploy": "npm run build && gh-pages -d dist"
}

# 部署
npm run deploy
```

### 4. 配置 base URL
在 `vite.config.js` 中设置正确的 base URL：
```javascript
export default defineConfig({
  base: process.env.NODE_ENV === 'production' ? '/wangyue-website/' : '/',
  // ...
})
```

## 后端部署 (免费服务)

### 选项1: Railway (推荐)
1. 注册 Railway (railway.app)
2. 连接 GitHub 仓库
3. 选择 backend 目录
4. 自动部署，Railway 会提供 URL

### 选项2: Render
1. 注册 Render (render.com)
2. 创建 Web Service
3. 连接 GitHub 仓库
4. 配置：
   - Build Command: `npm install`
   - Start Command: `npm start`
   - Environment: Node

### 选项3: Vercel
1. 注册 Vercel (vercel.com)
2. 导入项目
3. 选择 backend 目录
4. 配置为 Serverless Functions

## 数据库部署

### 选项1: Railway PostgreSQL (免费)
1. 在 Railway 创建 PostgreSQL 数据库
2. 获取连接字符串
3. 更新后端环境变量

### 选项2: PlanetScale (免费)
1. 注册 PlanetScale (planetscale.com)
2. 创建数据库
3. 使用连接字符串

### 选项3: 本地 MySQL + 隧道
1. 安装本地 MySQL
2. 使用 ngrok 或 localtunnel 创建隧道
3. 将隧道 URL 用于前端连接

## 环境变量配置

### 前端环境变量 (.env)
```env
VITE_API_URL=https://your-backend-url.com
VITE_APP_TITLE=王越个人网站
```

### 后端环境变量 (.env)
```env
PORT=5000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=yourpassword
DB_NAME=wangyue_website
NODE_ENV=production
```

## 完整部署流程

1. **数据库部署**
   ```bash
   # 创建数据库
   mysql -u root -p < database/schema.sql
   ```

2. **后端部署**
   ```bash
   cd backend
   npm install
   npm run build  # 如果有构建步骤
   # 部署到 Railway/Render
   ```

3. **前端部署**
   ```bash
   cd frontend
   npm install
   npm run build
   npm run deploy  # 部署到 GitHub Pages
   ```

4. **更新 API 地址**
   - 在前端代码中更新 API 基地址
   - 重新构建和部署前端

## 监控与维护

1. **健康检查**
   - 访问 `/api/health` 检查后端状态
   - 监控错误日志

2. **数据库备份**
   ```bash
   mysqldump -u root -p wangyue_website > backup.sql
   ```

3. **更新内容**
   - 修改数据库中的个人信息
   - 添加新项目到 projects 表
   - 更新技能列表

## 故障排除

### 前端无法加载
- 检查 base URL 配置
- 确认 GitHub Pages 已启用
- 检查控制台错误

### 后端连接失败
- 检查环境变量
- 确认数据库连接
- 查看服务器日志

### CORS 错误
- 在后端正确配置 CORS
- 检查前端请求 URL
- 确认跨域策略