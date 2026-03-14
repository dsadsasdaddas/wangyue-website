<template>
  <div id="app" class="min-h-screen bg-apple-gray font-sf-pro">
    <!-- 导航栏 -->
    <nav class="fixed top-0 left-0 right-0 bg-white/80 backdrop-blur-md z-50 border-b border-gray-200">
      <div class="container mx-auto px-6 py-4">
        <div class="flex items-center justify-between">
          <div class="text-2xl font-semibold text-apple-dark">
            王越<span class="text-apple-blue">.</span>
          </div>
          <div class="hidden md:flex space-x-8 items-center">
            <router-link to="/" class="text-gray-600 hover:text-apple-dark transition">首页</router-link>
            <router-link to="/about" class="text-gray-600 hover:text-apple-dark transition">关于</router-link>
            <router-link to="/projects" class="text-gray-600 hover:text-apple-dark transition">项目</router-link>
            <router-link to="/skills" class="text-gray-600 hover:text-apple-dark transition">技能</router-link>
            <router-link to="/contact" class="text-gray-600 hover:text-apple-dark transition">联系</router-link>
            <a href="https://github.com/dsadsasdaddas" target="_blank" class="text-gray-600 hover:text-apple-dark transition flex items-center gap-1">
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
              GitHub
            </a>
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
            <a href="https://github.com/dsadsasdaddas" target="_blank" class="text-gray-400 hover:text-white transition">GitHub</a>
            <a href="https://github.com/dsadsasdaddas/wangyue-website" target="_blank" class="text-gray-400 hover:text-white transition">本项目源码</a>
            <a href="mailto:yue.wang@example.com" class="text-gray-400 hover:text-white transition">Email</a>
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