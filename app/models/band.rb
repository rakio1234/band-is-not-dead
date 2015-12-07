class Band < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
