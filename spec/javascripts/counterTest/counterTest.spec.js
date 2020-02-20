import { mount } from '@vue/test-utils';
import Counter from '@/app/javascript/packs/countertest/counterTeset.vue';

describe('Counter', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(Counter)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })

  test('increments the counter value when button is clicked', () => {
      const wrapper = mount(Counter)
      console.log(wrapper.html())
      expect(wrapper.text()).toContain('Counter: 0')
      wrapper.find('button').trigger('click')
      expect(wrapper.text()).toContain('Counter: 1')
  })
})