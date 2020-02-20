require "rails_helper"
feature "Post::Index" do
  
  describe "Get #new" do
    before do
      @user = User.make!
      @blog = Post.make!(
        title: "Blog is here",
        user_id: @user.id
      )
      visit posts_path
    end

    it "should be successfull" do
      expect(page).to have_content @blog.title
    end
  end
end
