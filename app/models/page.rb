class Page < ActiveRecord::Base
  belongs_to :application
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  default_scope order('pages.FOLDER, pages.ORDER')
end
