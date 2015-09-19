class ProfileController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.all
    @profile = Profile.new

  end

  def create
    @user = User.all
    @profile = Profile.new(profile_params)
    @profile.user_id = params[:user_id]
    if @profile.save
      redirect_to profile_path(params[:user_id])
    else
      flash[:alert] = '실패'
      render 'new'
    end

  end

  def edit
    @user = User.all
    @profile = Profile.find(params[:id])
  end

  def show
    @user = User.all
    @work = Work.all
    @profile = Profile.all
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.user_id = params[:user_id]
    if @profile.update(profile_params)
      redirect_to profile_path(@profile.user_id)
    else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to :back
  end

  private
    def profile_params
      params.require(:profile).permit(:content, :user_id)
    end
end
