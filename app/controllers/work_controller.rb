class WorkController < ApplicationController
  def index
`b vvv`
  end

  # Work 생성페이지
  def new
    @work = Work.new
    @user = User.all
  end

  # Work 생성
  def create
    @work = Work.new(work_params)

    if @work.save
      redirect_to blog_path(params[:user_id].to_i)
    else
      flash[:alert] = '실패'
      render 'new'
    end
  end




  private

  def work_params
    params.require(:work).permit!
  end

end
