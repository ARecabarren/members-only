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

  end

end
