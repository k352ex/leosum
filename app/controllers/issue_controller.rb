class IssueController < ApplicationController

  def index
    @user = User.all
  end

end
