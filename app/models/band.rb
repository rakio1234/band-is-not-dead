class Band < ActiveRecord::Base

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  mount_uploader :image, ImageUploader
  mount_uploader :music, MusicUploader
  validates :name, presence: true
  validates :description, presence: true
end
