<template>
  <div class="todo-list">
    <div v-if="listEmpty">You have nothing else to do :(</div>
    <ul v-else>
      <li v-for="item in todos" :key="item.id">{{ item.text }}</li>
    </ul>
  </div>
</template>

<script>
  export default {
    props: {
      todos: {
        type: Array,
        default: () => [],
        validator: value =>
          Array.isArray(value) && value.every(item => item.id && item.text)
      }
    },
    computed: {
      listEmpty() {
        return this.todos.length === 0
      }
    }
  }
</script>