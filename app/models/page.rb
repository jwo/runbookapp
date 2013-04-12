class Page < ActiveRecord::Base
  belongs_to :application
  mount_uploader :image, ImageUploader
end
