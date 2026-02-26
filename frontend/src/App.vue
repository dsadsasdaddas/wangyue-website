<template>
  <div id="app" class="min-h-screen bg-apple-gray font-sf-pro">
    <!-- 导航栏 -->
    <nav class="fixed top-0 left-0 right-0 bg-white/80 backdrop-blur-md z-50 border-b border-gray-200">
      <div class="container mx-auto px-6 py-4">
        <div class="flex items-center justify-between">
          <div class="text-2xl font-semibold text-apple-dark">
            王越<span class="text-apple-blue">.</span>
          </div>
          <div class="hidden md:flex space-x-8">
            <router-link to="/" class="text-gray-600 hover:text-apple-dark transition">首页</router-link>
            <router-link to="/about" class="text-gray-600 hover:text-apple-dark transition">关于</router-link>
            <router-link to="/projects" class="text-gray-600 hover:text-apple-dark transition">项目</router-link>
            <router-link to="/skills" class="text-gray-600 hover:text-apple-dark transition">技能</router-link>
            <router-link to="/contact" class="text-gray-600 hover:text-apple-dark transition">联系</router-link>
          </div>
          <button class="md:hidden text-gray-600">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
            </svg>
          </button>
        </div>
      </div>
    </nav>

    <!-- 主要内容 -->
    <main class="pt-20">
      <router-view />
    </main>

    <!-- 页脚 -->
    <footer class="bg-apple-dark text-white py-12">
      <div class="container mx-auto px-6">
        <div class="text-center">
          <div class="text-2xl font-semibold mb-4">王越</div>
          <p class="text-gray-400 mb-6">温州大学学生 · 个人展示网站</p>
          <div class="flex justify-center space-x-6 mb-6">
            <a href="#" class="text-gray-400 hover:text-white transition">GitHub</a>
            <a href="#" class="text-gray-400 hover:text-white transition">LinkedIn</a>
            <a href="#" class="text-gray-400 hover:text-white transition">Email</a>
          </div>
          <p class="text-gray-500 text-sm">© 2024 王越. 保留所有权利.</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>