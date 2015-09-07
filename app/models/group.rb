class Group < ActiveRecord::Base
  mount_uploader :image, GroupUploader
end
