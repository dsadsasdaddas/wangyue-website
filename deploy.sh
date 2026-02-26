#!/bin/bash
echo "🚀 快速部署到 GitHub Pages..."

# 1. 构建前端
echo "🔨 构建前端..."
cd frontend
npm install --silent
npm run build

# 2. 创建 docs 目录并复制构建文件
echo "📁 准备部署文件..."
cd ..
rm -rf docs
mkdir -p docs
cp -r frontend/dist/* docs/

# 3. 添加 .nojekyll 文件（避免 Jekyll 处理）
touch docs/.nojekyll

# 4. 创建 CNAME 文件（如果需要自定义域名）
# echo "yourdomain.com" > docs/CNAME

# 5. 提交并推送
echo "📤 提交到 GitHub..."
git add docs/
git commit -m "部署到 GitHub Pages"
git push

echo ""
echo "✅ 部署完成！"
echo "🌐 网站将在几分钟后可用："
echo "   https://dsadsasdaddas.github.io/wangyue-website/"
echo ""
echo "📋 后续步骤："
echo "   1. 访问 https://github.com/dsadsasdaddas/wangyue-website/settings/pages"
echo "   2. 选择 Source: 'Deploy from a branch'"
echo "   3. 选择 Branch: 'main' 和 Folder: '/docs'"
echo "   4. 点击 Save"