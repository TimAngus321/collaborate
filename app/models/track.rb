class Track < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  has_many :requests
  has_many :submissions
  validates :name, presence: true
  validates :bpm, presence: true
  validates :time_signature, presence: true
  validates :key, presence: true
  validates :duration, presence: true
  validates :file, presence: true
end
