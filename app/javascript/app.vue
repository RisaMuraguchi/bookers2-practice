<template>
  <div id="app" class="d-flex flex-column min-vh-100">
    <header class= "mb-auto">
      <nav class= "navbar navbar-expand navbar-dark bg-dark justify-content-between">
        <span class= "navbar-brand mb-0 h1">{{ title }}</span>
      </nav>
    </header>
    <div class="text-center">
      <h3>タスクを管理しよう！</h3>
      <div class="mt-4">生活や仕事に関するタスクを見える化して抜け漏れを防ぎましょう。</div>
      <button type="button" class="btn btn-dark mt-5">はじめる</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "Top",
  data() {
    return {
      title: "タスク管理"
    }
  }
}
</script>

<style scoped>
 h3{
    color: red;
  }
</style>
