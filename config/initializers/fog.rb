CarrierWave.configure do |config|
  if Rails.env.test? or Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
  else
    config.storage = :fog
    config.fog_public = false
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV["AWS_SECRET_ID"],
      :aws_secret_access_key  => ENV["AWS_SECRET_KEY"]
    }
    config.fog_directory = ENV["AWS_BUCKET"]
  end
end
