class FileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def extension_whitelist
    %w[mpeg x-mpeg mp3 x-mp3 mpeg3 mpg x-mpg x-mpegaudio wav]
  end
end
