import Vue from 'vue'
import App from '../app.vue'
import 'bootstrap/dist/css/bootstrap.css'

Vue.config.productionTip = false

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})