module Filepicker
  mattr_accessor :api_key
  @@api_key = ""

  def self.config
    yield self
  end
end
