class FileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
