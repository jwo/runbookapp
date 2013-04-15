# encoding: utf-8
require 'carrierwave/processing/mime_types'
class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MimeTypes
  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    asset_path("fallback/" + ["blankpage", version_name, "default.png"].compact.join('_'))
  end

  process :set_content_type
  version :thumb do
    process :resize_to_fit => [150, 150]
  end

  version :page do
    process :resize_to_fit => [612, 612]
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
