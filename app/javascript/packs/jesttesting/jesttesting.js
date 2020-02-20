import Vue from "vue";
import AddTodoForm from "./AddTodoForm.vue";

document.addEventListener('DOMContentLoaded', () => {
  const el = document.getElementById('add-todo-form')
  const app = new Vue({
    el,
    render: h => h(AddTodoForm, {
      props: {
        user_id: el.dataset.user_id
      }
    })
  })
});