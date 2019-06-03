class Request < ApplicationRecord
  include PgSearch

  belongs_to :instrument
  belongs_to :track
  has_one :genre, through: :track
  has_many :submissions
  validates :start_second, presence: true
  validates :end_second, presence: true
  validates :description, presence: true

  pg_search_scope :search_by_instrument_and_genre,
    associated_against: {
      instrument: [ :name ],
      genre: :name
    },
    using: {
      tsearch: { prefix: true }
    }

end
