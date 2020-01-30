class Submission < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  belongs_to :request

  default_scope { order(created_at: :desc) }

  validates :description, presence: true, length: { in: 10..200,
                                                    message: " must be between 10 - 200 characters." }
  validates :file, presence: true
end
