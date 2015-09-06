class PostController < ApplicationController
  def index

  end
  def create
    @post = Post.new
    @post.title  = params[:title]
    @post.artist = params[:artist]
    @post.context = params[:context]
    @post.image  = params[:image]
    @post.save
    redirect_to authenticated_root_path

  end

  def new

  end

end
