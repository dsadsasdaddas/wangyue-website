<template>
  <div class="about">
    <section class="section-padding">
      <div class="container">
        <h1 class="text-5xl font-bold text-apple-dark mb-12 text-center">关于我</h1>
        
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl font-bold mb-6">王越 · 温州大学</h2>
            <p class="text-gray-600 mb-6 leading-relaxed">
              我是温州大学计算机科学专业的一名学生，对前端开发和用户体验设计充满热情。
              我相信技术应该服务于人，致力于创造既美观又实用的数字产品。
            </p>
            <p class="text-gray-600 mb-6 leading-relaxed">
              在温州大学的学习期间，我不仅掌握了扎实的计算机科学基础，还积极参与了多个校园项目，
              将理论知识应用于实际开发中。我特别关注现代Web技术的发展和用户体验的最佳实践。
            </p>
            <div class="space-y-4">
              <div class="flex items-center">
                <div class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center mr-4">
                  <span class="text-apple-blue">🎓</span>
                </div>
                <div>
                  <div class="font-medium">温州大学</div>
                  <div class="text-gray-500 text-sm">计算机科学专业 · 2022-2026</div>
                </div>
              </div>
              <div class="flex items-center">
                <div class="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center mr-4">
                  <span class="text-green-600">📍</span>
                </div>
                <div>
                  <div class="font-medium">温州，浙江</div>
                  <div class="text-gray-500 text-sm">中国 · 家乡</div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="bg-gradient-to-br from-blue-50 to-white rounded-2xl p-8">
            <h3 class="text-2xl font-bold mb-6">教育背景</h3>
            <div class="space-y-6">
              <div class="border-l-4 border-apple-blue pl-4">
                <div class="font-bold">计算机科学学士</div>
                <div class="text-gray-600">温州大学 · 2022-2026</div>
                <div class="text-gray-500 text-sm mt-1">主修课程：数据结构、算法、Web开发、数据库系统</div>
              </div>
              <div class="border-l-4 border-purple-500 pl-4">
                <div class="font-bold">前端开发专项</div>
                <div class="text-gray-600">在线课程 · 2023-2024</div>
                <div class="text-gray-500 text-sm mt-1">Vue.js、React、TypeScript、现代CSS</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'About'
}
</script>