class Band < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :description, presence: true
end
