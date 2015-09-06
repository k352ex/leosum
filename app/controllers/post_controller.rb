class PostController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to authenticated_root_path
    else
      flash[:alert] = '실패'
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit!
  end
end
