class Track < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :submissions
end
