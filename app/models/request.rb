class Request < ApplicationRecord
  belongs_to :instrument
  belongs_to :track
  has_many :submissions
end
