# coding: utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # 	def new
		# @post = Post.new
  # 	end

  # 	def create
  			
	 #   	if @post.save
  #    		redirect_to authenticated_root_path
  #   	else
  #     		flash[:alert] = '실패'
  #     		render 'new'
		# end	
  # 		@post.user_id = params[:user_id]
  # 	end

  # 	private

  # 	def post_params
		# params.require(:post).permit(:title, :context, :artist, :image, :tag_list)
  # 	end

    protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username 
  end
end
