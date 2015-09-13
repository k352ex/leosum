class ArtistController < ApplicationController

  def index
    @user = User.all
  end

end
