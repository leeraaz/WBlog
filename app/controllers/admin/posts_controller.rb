class Admin::PostsController < ApplicationController
	before_action :authenticate_admin!
	layout "admin"
	
	def index
		@blogs = Post.all.order("created_at ASC")
	end

	def show
		@blogs = Post.find_by_id(params[:id])
	end
end
