class PostsController < ApplicationController
  before_action :post_find, only: [:update, :destroy]
  
  before_action :auth, only: [:update, :destroy]
  before_action :authenticate_user!, only: [:create, :update]
  def index
    if user_signed_in?
      @posts = current_user.posts
    end
    @post = Post.new
  end


  def create

  	@post = Post.new(create_params)
    @post.user_id = current_user.id
  	if @post.save
      render 'create.js.erb'
    else
      render 'error.js.erb'
    end
  end

  def update
   	if @post.update(create_params)
  		render 'update.js.erb'
   	else
  		render 'error-update.js.erb'
   	end
  end

  def destroy
    @post.destroy
  end
  private

  def create_params
  	params.require(:post).permit(:title, :body, :audio, :sound)
  end

  def post_find
    @post = Post.find params[:id]
  end

  def auth
    if @post.user_id != current_user.id
      redirect_to posts_path
    end
  end
end
