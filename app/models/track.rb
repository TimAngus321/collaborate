class Track < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  has_many :requests
  has_many :submissions
end
