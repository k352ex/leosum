class IssueController < ApplicationController

  def index
    @user = User.all
    @post = Post.all
    @keyword = Keyword.all
  end

  def show
    @user = User.all
    @post = Post.all
    @index = 0
  end

end
