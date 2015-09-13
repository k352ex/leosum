class PreviewController < ApplicationController

  def show

    @post = Post.all
    @user = User.all
    #
    # @post_id = Post.find(params[:id])
    # @user_id = User.find(params[:user_id])
  end

end
