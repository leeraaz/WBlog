import Vue from 'vue';
import Counter from './counterTeset'

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    render: h => h(Counter)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})