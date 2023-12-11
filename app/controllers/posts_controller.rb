class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @posts = Post.all
  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @posts = current_user.posts.build(post_params)
    if @posts.save
      redirect_to root_path, notice: "Post created successfully"
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
