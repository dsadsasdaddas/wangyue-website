const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

// 中间件
app.use(cors());
app.use(express.json());

// 模拟数据 - 王越的个人信息
const personalInfo = {
  name: "王越",
  university: "温州大学",
  major: "计算机科学",
  location: "温州，浙江",
  email: "wangyue@wzu.edu.cn",
  github: "https://github.com/wangyue",
  linkedin: "https://linkedin.com/in/wangyue",
  bio: "温州大学计算机科学专业学生，专注于前端开发与用户体验设计。热爱技术创新，致力于打造优雅、高效的数字化解决方案。",
  education: [
    {
      degree: "计算机科学学士",
      institution: "温州大学",
      period: "2022-2026",
      description: "主修课程：数据结构、算法、Web开发、数据库系统"
    }
  ],
  skills: [
    { category: "前端", items: ["Vue.js", "React", "TypeScript", "Tailwind CSS", "Vite"] },
    { category: "后端", items: ["Node.js", "Express", "MySQL", "REST API"] },
    { category: "工具", items: ["Git", "Docker", "VS Code", "Figma"] }
  ],
  projects: [
    {
      id: 1,
      title: "智能课程管理系统",
      description: "为温州大学开发的课程管理平台，支持课程安排、作业提交、成绩查询等功能。",
      technologies: ["Vue.js", "Node.js", "MySQL"],
      category: "校园项目",
      link: "#"
    },
    {
      id: 2,
      title: "温州美食地图",
      description: "基于地理位置的美食推荐应用，展示温州特色美食文化与餐厅信息。",
      technologies: ["React", "地图API", "Firebase"],
      category: "个人项目",
      link: "#"
    }
  ]
};

// API 路由
app.get('/api/info', (req, res) => {
  res.json(personalInfo);
});

app.get('/api/projects', (req, res) => {
  res.json(personalInfo.projects);
});

app.get('/api/skills', (req, res) => {
  res.json(personalInfo.skills);
});

// 联系表单提交（模拟）
app.post('/api/contact', (req, res) => {
  const { name, email, message } = req.body;
  
  // 这里可以添加邮件发送逻辑或数据库存储
  console.log('收到联系表单:', { name, email, message });
  
  res.json({
    success: true,
    message: '消息已收到，我会尽快回复！'
  });
});

// 健康检查
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString() });
});

// 启动服务器
app.listen(PORT, () => {
  console.log(`服务器运行在 http://localhost:${PORT}`);
  console.log(`API 端点:`);
  console.log(`  GET  /api/info     - 个人信息`);
  console.log(`  GET  /api/projects - 项目列表`);
  console.log(`  GET  /api/skills   - 技能列表`);
  console.log(`  POST /api/contact  - 联系表单`);
  console.log(`  GET  /api/health   - 健康检查`);
});