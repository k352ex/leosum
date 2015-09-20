class PostController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @user = User.all
  end

  def create
    # @user = User.all
    @post = Post.new(post_params)
    @post.user_id = params[:user_id]

    if @post.save
      redirect_to authenticated_root_path
    else
      flash[:alert] = '실패'
      render 'new'
    end
  end

  def update

  end

	private

	def post_params
		params.require(:post).permit!
	end
end
