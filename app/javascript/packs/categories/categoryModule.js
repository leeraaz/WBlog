import Vue from 'vue';
import Category from './category'

document.addEventListener('turbolinks:load', () => {
  const el = document.getElementById('category-list')
  // const app = new Vue({
  //   render: h => h(Category)
  // }).$mount()
  // document.body.appendChild(app.$el)

  // console.log(app)
  const app = new Vue({
    el,
    render: h => h(Category, {
      // props: {categories: JSON.parse(categories)}
      // props: {
      //   user_id: el.dataset.user_id,
      // }
    })
  })
})