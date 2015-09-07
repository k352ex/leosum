class GalleryController < ApplicationController

  def index
    # 사진 참조를 위한 post객체 생성
    @post = Post.all
  end

end
