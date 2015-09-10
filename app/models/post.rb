class Post < ActiveRecord::Base
  mount_uploader :image, PostUploader
  belongs_to :user
end
