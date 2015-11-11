class GalleryController < ApplicationController

  def index
    @user = User.all
    @post = Post.all

    # @post_new = Post.new
    @tempImage = Array.new

    @post.each do |p|
      @tempImage.append(p)
    end

    @tileImage = @tempImage.sample(15)
  end

 #  def new
 #  	@post = Post.new
 #  end

 #  def create
		
	# @post = Post.new(post_params)
 #    @post.user_id = params[:user_id]
    	
 #   	if @post.save
 #     	redirect_to authenticated_root_path
 #    else
 #      	flash[:alert] = '실패'
 #      	render 'new'
	# end	
 #  end		

 #  private

 #  def post_params
	# params.require(:post).permit(:title, :context, :artist, :image, :tag_list)
 #  end

end
