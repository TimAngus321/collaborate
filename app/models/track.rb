class Track < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  has_many :requests
end
