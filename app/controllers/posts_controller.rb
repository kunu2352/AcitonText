class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new
    if @post.save
      redirect_to
    else
      render :new
    end
  end
  
  def index
    @posts = Post.all
  end
  
  
  private
  
  def idea_request_params
    params.requir(:post).permit(:title, :content)
  end
  

end
