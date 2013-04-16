class Page < ActiveRecord::Base
  belongs_to :application
  mount_uploader :image, ImageUploader

  validates :title, presence: true
end
