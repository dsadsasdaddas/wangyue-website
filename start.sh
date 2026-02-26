#!/bin/bash
# 王越个人网站快速启动脚本

echo "🚀 启动王越个人展示网站..."

# 检查必要工具
command -v node >/dev/null 2>&1 || { echo "❌ 需要安装 Node.js"; exit 1; }
command -v npm >/dev/null 2>&1 || { echo "❌ 需要安装 npm"; exit 1; }

# 启动后端
echo "📦 启动后端服务器..."
cd backend
if [ ! -d "node_modules" ]; then
    echo "安装后端依赖..."
    npm install
fi

# 在后端目录启动服务器（后台运行）
npm start &
BACKEND_PID=$!
echo "后端进程ID: $BACKEND_PID"

# 等待后端启动
sleep 3

# 启动前端
echo "🎨 启动前端开发服务器..."
cd ../frontend
if [ ! -d "node_modules" ]; then
    echo "安装前端依赖..."
    npm install
fi

# 在前端目录启动开发服务器
npm run dev &
FRONTEND_PID=$!
echo "前端进程ID: $FRONTEND_PID"

echo ""
echo "✅ 启动完成！"
echo ""
echo "🌐 访问以下地址："
echo "   前端: http://localhost:3000"
echo "   后端API: http://localhost:5000"
echo "   健康检查: http://localhost:5000/api/health"
echo ""
echo "📋 可用命令："
echo "   停止所有服务: kill $BACKEND_PID $FRONTEND_PID"
echo "   查看后端日志: tail -f backend/server.log"
echo "   查看前端日志: tail -f frontend/vite.log"
echo ""
echo "🛠️  开发说明："
echo "   1. 修改前端代码: frontend/src/"
echo "   2. 修改后端代码: backend/server.js"
echo "   3. 数据库脚本: database/schema.sql"
echo "   4. 部署指南: docs/DEPLOYMENT.md"

# 等待用户中断
echo ""
echo "按 Ctrl+C 停止所有服务..."
wait