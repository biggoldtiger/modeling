class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    a = Post.new
    a.title = params[:title]
    a.content = params[:content]
    a.save
    
    redirect_to '/posts/index'
  end
end
