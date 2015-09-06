class PostController < ApplicationController
  def index

  end

  def new

    post = Post.new
    post.title  = params[:title]
    post.artist = params[:artist]
    post.context = params[:context]
    post.image  = params[:image]
    post.save

  end

end
