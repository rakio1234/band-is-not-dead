class Band < ActiveRecord::Base
  acts_as_taggable_on :genres
  acts_as_taggable
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  mount_uploader :image, ImageUploader
  mount_uploader :music, MusicUploader
  validates :name, presence: true
  validates :member, presence: true
  validates :description, presence: true
end
