<template>
  <div>
    <form @submit="handleSubmit">
      <input v-model="form.text" name="text" type="text">
      <button type="submit">Add todo</button> 
    </form>
    <todoList></todoList>
  </div>
</template>

<script>
import TodoList from './TodoList'

export default {
  data() {
    return {
      form: {
        text: ''
      }
    }
  },
  props: ["user_id"],
  components: {
    todoList: TodoList
  },
  methods: {
    handleSubmit() {
      if (!this.form.text) return
      this.$emit('todo-added', this.form.text)
      this.form.text = ''
    }
  }
}
</script>