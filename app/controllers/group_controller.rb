# coding: utf-8
class GroupController < ApplicationController

  def index
    @group = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to authenticated_root_path
    else
      flash[:alert] = '실패'
      render 'new'
    end
  end

  def group_params
    params.require(:group).permit!
  end

end
