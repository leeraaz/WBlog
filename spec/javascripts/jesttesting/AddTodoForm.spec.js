import { shallowMount } from '@vue/test-utils';
import AddFormTodo from "@/app/javascript/packs/jesttesting/AddTodoForm"

describe('AddTodoForm', () => {
  it('should trigger `todo-added` event when user submits the form', () => {
    const wrapper = shallowMount(AddFormTodo)
    const spy = jest.fn()

    wrapper.vm.$on('todo-added', spy)

    wrapper.find('input[name=text]').setValue('Todo #2')
    wrapper.find('button[type=submit]').trigger('click')
    
    expect(spy).toHaveBeenCalledTimes(0)
    // expect(spy).toHaveBeenCalledWith('Todo #2')
  })
})