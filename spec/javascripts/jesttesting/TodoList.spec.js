import { shallowMount, mount } from '@vue/test-utils';
import TodoList from '@/app/javascript/packs/jesttesting/TodoList.vue';

describe('TodoList', () => {
  it('should render to a snapshot when list is empty', () => {
    const propsData = { todos: [] }
    const wrapper = shallowMount(TodoList, { propsData })
    // const jpt = {beef: "hehe", bacon: "haha"}
    // console.log(JSON.parse(JSON.stringify(jpt)))
    expect(wrapper.element).toMatchSnapshot()
  })

  it('should render to a snapshot when list has items', () => {
    const propsData = { todos: [{ id: 1, text: 'Todo #1' }] }
    const wrapper = shallowMount(TodoList, { propsData })
    expect(wrapper.element).toMatchSnapshot()
  })

  test('is a Vue instance', () => {
    const wrapper = mount(TodoList)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
})