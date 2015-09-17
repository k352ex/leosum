# coding: utf-8
class GroupController < ApplicationController

  def index
    @group = Group.all
    @user = User.all
  end

  def new
    @group = Group.new
    @user = User.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to group_index_path
    else
      flash[:alert] = '실패'
      render 'new'
    end
  end

  def update

  end

  def group_params
    params.require(:group).permit!
  end

end
