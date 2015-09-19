class Post < ActiveRecord::Base
  mount_uploader :image, PostUploader
  belongs_to :user
  has_and_belongs_to_many :keywords
end
