# 王越个人展示网站 - 项目总结

## 🎯 项目概述
为温州大学学生王越创建的个人展示网站，采用苹果风格设计，展示个人简介、教育背景、项目经验和技能。

## 🏗️ 技术架构

### 前端技术栈
- **框架**: Vue.js 3 + Composition API
- **构建工具**: Vite
- **样式**: Tailwind CSS + 自定义动画
- **路由**: Vue Router
- **HTTP客户端**: Axios
- **部署**: GitHub Pages

### 后端技术栈
- **运行时**: Node.js
- **框架**: Express.js
- **数据库**: MySQL (通过 mysql2)
- **部署**: Railway/Render (免费服务)

### 设计风格
- **灵感来源**: 苹果官网
- **主色调**: 白色、苹果蓝 (#0071e3)
- **字体**: SF Pro 系统字体
- **动画**: 淡入、上滑等优雅过渡

## 📁 项目结构
```
wangyue-website/
├── frontend/                 # Vue.js 前端应用
│   ├── src/
│   │   ├── components/      # 可复用组件
│   │   ├── views/          # 页面组件
│   │   ├── router/         # 路由配置
│   │   ├── assets/         # 静态资源
│   │   └── utils/          # 工具函数
│   ├── package.json
│   ├── vite.config.js
│   └── tailwind.config.js
├── backend/                  # Node.js 后端
│   ├── server.js           # 主服务器文件
│   └── package.json
├── database/                # 数据库脚本
│   └── schema.sql          # MySQL 表结构
├── docs/                   # 文档
│   └── DEPLOYMENT.md       # 部署指南
├── start.sh               # 快速启动脚本
├── README.md              # 项目说明
└── PROJECT_SUMMARY.md     # 本项目总结
```

## 🚀 核心功能

### 1. 首页 (Home)
- 个人简介和亮点展示
- 精选项目预览
- 响应式英雄区域

### 2. 关于页面 (About)
- 详细个人介绍
- 教育背景展示
- 温州大学相关信息

### 3. 项目页面 (Projects)
- 项目列表展示
- 技术栈标签
- 项目分类筛选

### 4. 技能页面 (Skills)
- 技能分类展示
- 熟练度指示
- 技术栈可视化

### 5. 联系页面 (Contact)
- 联系方式展示
- 联系表单提交
- 社交媒体链接

## 🔧 快速开始

### 开发环境
```bash
# 1. 克隆项目
git clone <repository-url>
cd wangyue-website

# 2. 启动所有服务
./start.sh

# 或手动启动：
# 后端：cd backend && npm install && npm start
# 前端：cd frontend && npm install && npm run dev
```

### 访问地址
- 前端开发服务器: http://localhost:3000
- 后端API服务器: http://localhost:5000
- API健康检查: http://localhost:5000/api/health

## 🌐 部署方案

### 前端部署 (GitHub Pages)
1. 构建生产版本: `npm run build`
2. 部署到 GitHub Pages: `npm run deploy`
3. 配置自定义域名 (可选)

### 后端部署 (免费服务)
- **Railway**: 自动部署，免费额度充足
- **Render**: 免费Web服务，简单配置
- **Vercel**: Serverless Functions 部署

### 数据库部署
- **Railway PostgreSQL**: 免费数据库服务
- **PlanetScale**: MySQL 兼容，免费计划
- **本地MySQL + 隧道**: 开发测试使用

## 📊 数据模型

### 主要数据表
1. **personal_info** - 个人信息
2. **education** - 教育经历
3. **skills** - 技能列表
4. **projects** - 项目经验
5. **contact_messages** - 联系消息

### API 端点
- `GET /api/info` - 获取个人信息
- `GET /api/projects` - 获取项目列表
- `GET /api/skills` - 获取技能列表
- `POST /api/contact` - 提交联系表单
- `GET /api/health` - 健康检查

## 🎨 设计特色

### 苹果风格元素
- 简洁的白色背景
- 优雅的卡片设计
- 平滑的动画过渡
- 响应式网格布局

### 自定义组件
- `AppleCard` - 苹果风格卡片
- `GradientText` - 渐变文字效果
- `SkillBadge` - 技能标签
- `ProjectCard` - 项目展示卡片

## 🔄 扩展建议

### 短期扩展
1. 添加博客功能
2. 集成评论系统
3. 添加作品集画廊
4. 实现暗色模式

### 长期扩展
1. 多语言支持
2. 访客统计
3. 内容管理系统
4. 邮件订阅功能

## 📝 维护指南

### 内容更新
1. 修改数据库中的个人信息
2. 通过后台管理界面 (待开发)
3. 直接编辑 JSON 数据文件

### 技术更新
1. 定期更新依赖包
2. 监控安全漏洞
3. 优化性能指标

## 🎯 项目目标
- 展示王越的个人品牌
- 提供专业的在线简历
- 建立技术作品集
- 方便潜在雇主联系

## 📞 支持与贡献
如有问题或建议，请通过以下方式联系：
- GitHub Issues: 报告问题
- Email: 技术支持邮箱
- 文档: 查看详细文档