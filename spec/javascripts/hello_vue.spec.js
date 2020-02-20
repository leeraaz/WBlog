import { shallowMount, mount } from "@vue/test-utils";
import App from "@/app/javascript/app.vue";
import { createRenderer } from "vue-server-renderer";

describe("app", () => {
  it("success matches snapshot", () => {
    const renderer = createRenderer();
    const wrapper = shallowMount(App);
    renderer.renderToString(wrapper.vm, (err, str) => {
      if (err) throw new Error(err);
      expect(str).toMatchSnapshot();
    });
  });
});

describe('App', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(App)
    expect(wrapper.isVueInstance()).toBeTruthy()
    // expect(wrapper.attributes().message).toBe("Hello Vue!")
    // const hellos = JSON.parse(JSON.stringify(wrapper))
    // console.log(wrapper.html())
    // console.log(hellos)
  })

  it("should display props.ms when passed", () => {
    // const msg = "This is something new";
    // const wrapper = shallowMount(App, {
    //   propsData: { msg }
    // });
    // expect(wrapper.text()).toMatch(msg);
  })
})
