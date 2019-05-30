class Instrument < ApplicationRecord
  has_many :requests
  has_many :submissions
  has_many :user_instruments
  has_many :users, through: :user_instruments
end
