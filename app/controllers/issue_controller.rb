class IssueController < ApplicationController

  def index
    @user = User.all
    @post = Post.all
    @tag_list = [] # 배열 생성
    @tag_count = Hash.new

    @issue_list = Array.new

    @post.each do |p|
      @tag_list.append(p.tag_list) # 배열에 태그 삽입
    end
    # 배열 일차원 배열로 변경 및 중복 제거 처리
    @tag_list = @tag_list.flatten.uniq

    # 태그 가중치 저장
    Post.tag_counts.each do |p|
      @tag_count.merge!("#{p.name}" => p.taggings_count)
    end

    # 이슈 리스트
    Post.tag_counts.each do |p|
      @tmp_hash = Hash.new
      @tmp_hash.merge!(text: "#{p.name.as_json}", weight: p.taggings_count.to_i, link: "/preview/#{p.id.to_json}")
      @issue_list << @tmp_hash
    end

  end


  def show
    @user = User.all
    @post = Post.all
    @index = 0
  end

end
