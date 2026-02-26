#!/bin/bash
echo "🔨 构建前端项目..."

cd frontend

# 检查 node_modules
if [ ! -d "node_modules" ]; then
    echo "📦 安装依赖..."
    npm install --silent
fi

echo "🏗️  构建生产版本..."
npm run build

echo "✅ 构建完成！"
echo "📁 输出目录: frontend/dist"
echo "📦 文件数量: $(find dist -type f | wc -l)"
echo "📊 总大小: $(du -sh dist | cut -f1)"