require "rails_helper"

RSpec.describe Post, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    @user = User.make!
    idea = Post.create!(title: "My Awesome Idea Name",
      user_id: @user.id) # creating a new idea 'instance'
    expect(idea.title).to eq("My Awesome Idea Name") # this is our expectation
  end
end