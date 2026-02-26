<template>
  <div class="home">
    <!-- Hero 区域 -->
    <section class="section-padding">
      <div class="container">
        <div class="flex flex-col md:flex-row items-center justify-between">
          <div class="md:w-1/2 mb-12 md:mb-0 animate-fade-in">
            <h1 class="text-5xl md:text-7xl font-bold text-apple-dark mb-6">
              你好，我是
              <span class="gradient-text">王越</span>
            </h1>
            <p class="text-xl text-gray-600 mb-8 leading-relaxed">
              温州大学计算机科学专业学生，专注于前端开发与用户体验设计。
              热爱技术创新，致力于打造优雅、高效的数字化解决方案。
            </p>
            <div class="flex space-x-4">
              <button class="bg-apple-blue text-white px-8 py-3 rounded-full font-medium hover:bg-blue-700 transition">
                查看项目
              </button>
              <button class="border border-gray-300 text-gray-700 px-8 py-3 rounded-full font-medium hover:bg-gray-50 transition">
                联系我
              </button>
            </div>
          </div>
          <div class="md:w-1/2 flex justify-center">
            <div class="relative">
              <div class="w-64 h-64 md:w-80 md:h-80 bg-gradient-to-br from-blue-100 to-purple-100 rounded-full flex items-center justify-center">
                <div class="text-6xl md:text-8xl text-apple-blue">WY</div>
              </div>
              <div class="absolute -top-4 -right-4 w-24 h-24 bg-yellow-100 rounded-full animate-pulse"></div>
              <div class="absolute -bottom-4 -left-4 w-16 h-16 bg-green-100 rounded-full animate-pulse"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 亮点展示 -->
    <section class="bg-white py-16">
      <div class="container">
        <h2 class="text-4xl font-bold text-center text-apple-dark mb-12">个人亮点</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="apple-card animate-slide-up">
            <div class="text-apple-blue text-4xl mb-4">🎓</div>
            <h3 class="text-xl font-semibold mb-3">温州大学</h3>
            <p class="text-gray-600">计算机科学专业，主攻前端开发与用户体验设计，GPA 3.8/4.0。</p>
          </div>
          <div class="apple-card animate-slide-up" style="animation-delay: 0.1s">
            <div class="text-apple-blue text-4xl mb-4">💻</div>
            <h3 class="text-xl font-semibold mb-3">技术专长</h3>
            <p class="text-gray-600">精通 Vue.js、React、Node.js，熟悉现代前端开发流程与最佳实践。</p>
          </div>
          <div class="apple-card animate-slide-up" style="animation-delay: 0.2s">
            <div class="text-apple-blue text-4xl mb-4">🚀</div>
            <h3 class="text-xl font-semibold mb-3">项目经验</h3>
            <p class="text-gray-600">参与多个校园项目与开源贡献，具备完整的项目开发与部署经验。</p>
          </div>
        </div>
      </div>
    </section>

    <!-- 最新项目 -->
    <section class="section-padding">
      <div class="container">
        <div class="flex justify-between items-center mb-12">
          <h2 class="text-4xl font-bold text-apple-dark">精选项目</h2>
          <router-link to="/projects" class="text-apple-blue hover:underline">查看全部 →</router-link>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div class="bg-gradient-to-br from-blue-50 to-white rounded-2xl p-8">
            <div class="text-sm text-apple-blue font-medium mb-2">校园项目</div>
            <h3 class="text-2xl font-bold mb-3">智能课程管理系统</h3>
            <p class="text-gray-600 mb-4">为温州大学开发的课程管理平台，支持课程安排、作业提交、成绩查询等功能。</p>
            <div class="flex flex-wrap gap-2 mb-4">
              <span class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-sm">Vue.js</span>
              <span class="px-3 py-1 bg-green-100 text-green-700 rounded-full text-sm">Node.js</span>
              <span class="px-3 py-1 bg-purple-100 text-purple-700 rounded-full text-sm">MySQL</span>
            </div>
            <a href="#" class="text-apple-blue font-medium hover:underline">查看详情 →</a>
          </div>
          <div class="bg-gradient-to-br from-purple-50 to-white rounded-2xl p-8">
            <div class="text-sm text-purple-600 font-medium mb-2">个人项目</div>
            <h3 class="text-2xl font-bold mb-3">温州美食地图</h3>
            <p class="text-gray-600 mb-4">基于地理位置的美食推荐应用，展示温州特色美食文化与餐厅信息。</p>
            <div class="flex flex-wrap gap-2 mb-4">
              <span class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-sm">React</span>
              <span class="px-3 py-1 bg-yellow-100 text-yellow-700 rounded-full text-sm">地图API</span>
              <span class="px-3 py-1 bg-red-100 text-red-700 rounded-full text-sm">Firebase</span>
            </div>
            <a href="#" class="text-purple-600 font-medium hover:underline">查看详情 →</a>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Home'
}
</script>