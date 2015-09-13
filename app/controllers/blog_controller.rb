class BlogController < ApplicationController
  def index
    @post_id = Post.find(params[:id])
    @user_id = Post.find(params[:user_id])
  end

  def show
    @user = User.all
    @work = Work.all
  end

  def profile

  end

end
