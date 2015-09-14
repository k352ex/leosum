class ReviewController < ApplicationController
  def index

  end

  def new

  end

  def create
    @review = Review.new()
    
  end
end
