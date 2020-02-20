class PagesController < ApplicationController
	def index
    @blogs = Post.all
	end
	
	def about
		@title = "About Us";
		@hell = "This is the about page please fill yourself";
	end	
end
