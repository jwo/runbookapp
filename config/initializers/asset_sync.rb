AssetSync.configure do |config|
  config.fog_provider = 'AWS'
  config.aws_access_key_id = ENV["AWS_SECRET_ID"]
  config.aws_secret_access_key = ENV["AWS_SECRET_KEY"]
  config.fog_directory  = ENV["AWS_BUCKET"]
  config.manifest = true
end
