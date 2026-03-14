<template>
  <div class="projects py-16">
    <div class="container">
      <h1 class="text-4xl font-bold text-apple-dark mb-12">我的项目</h1>
      
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <!-- 项目卡片 -->
        <div class="apple-card hover:shadow-xl transition">
          <div class="h-40 bg-gradient-to-br from-blue-400 to-blue-600 rounded-t-2xl"></div>
          <div class="p-6">
            <h3 class="text-xl font-bold mb-2">智能课程管理系统</h3>
            <p class="text-gray-600 mb-4">为温州大学开发的课程管理平台</p>
            <div class="flex flex-wrap gap-2">
              <span class="px-2 py-1 bg-blue-100 text-blue-700 rounded text-sm">Vue.js</span>
              <span class="px-2 py-1 bg-green-100 text-green-700 rounded text-sm">Node.js</span>
            </div>
          </div>
        </div>

        <div class="apple-card hover:shadow-xl transition">
          <div class="h-40 bg-gradient-to-br from-purple-400 to-purple-600 rounded-t-2xl"></div>
          <div class="p-6">
            <h3 class="text-xl font-bold mb-2">温州美食地图</h3>
            <p class="text-gray-600 mb-4">基于地理位置的美食推荐应用</p>
            <div class="flex flex-wrap gap-2">
              <span class="px-2 py-1 bg-blue-100 text-blue-700 rounded text-sm">React</span>
              <span class="px-2 py-1 bg-yellow-100 text-yellow-700 rounded text-sm">地图API</span>
            </div>
          </div>
        </div>

        <div class="apple-card hover:shadow-xl transition">
          <div class="h-40 bg-gradient-to-br from-green-400 to-green-600 rounded-t-2xl"></div>
          <div class="p-6">
            <h3 class="text-xl font-bold mb-2">个人网站</h3>
            <p class="text-gray-600 mb-4">本网站项目源码</p>
            <div class="flex flex-wrap gap-2">
              <span class="px-2 py-1 bg-blue-100 text-blue-700 rounded text-sm">Vue.js</span>
              <span class="px-2 py-1 bg-purple-100 text-purple-700 rounded text-sm">Tailwind</span>
            </div>
            <a href="https://github.com/dsadsasdaddas/wangyue-website" target="_blank" class="inline-block mt-4 text-apple-blue hover:underline">查看源码 →</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Projects'
}
</script>