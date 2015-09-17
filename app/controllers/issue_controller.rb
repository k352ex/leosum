class IssueController < ApplicationController

  def index
    @user = User.all
    @post = Post.all
  end

  def show
    @user = User.all
    @post = Post.all
  end

end
