class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @posts = Post.all
  end

  def show

  end

  def new
  end

  def create

  end

end
