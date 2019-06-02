class Request < ApplicationRecord
  belongs_to :instrument
  belongs_to :track
  has_many :submissions
  validates :start_second, presence: true
  validates :end_second, presence: true
  validates :description, presence: true
end
