class Submission < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  belongs_to :request
end
