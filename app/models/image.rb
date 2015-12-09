class Image < ActiveRecord::Base
  mount_uploader :attachment, ImageUploader
  belongs_to :band
end
