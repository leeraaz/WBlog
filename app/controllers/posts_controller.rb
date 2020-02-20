class PostsController < ApplicationController
	#http_basic_authenticate_with name: "Liraj", password:"liraj", except: [:index, :show]
	before_action :authenticate_user!, except: [:show, :index]

	def index
		 @posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		#render plain: params[:Post].inspect
		@post = Post.new(post_params)
		@post.user = current_user

		if(@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end	

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if(@post.update(post_params))
			redirect_to @post
		else
			render 'edit'
		end	
	end

	def destroy
		@post = Post.find(params[:id])

		@post.destroy
		
		redirect_to posts_path
	end

	private def post_params
		params.require(:post).permit(:title,:body,:picture)
	end
end
