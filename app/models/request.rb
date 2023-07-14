class Request < ApplicationRecord
  include PgSearch::Model

  belongs_to :instrument
  belongs_to :track
  has_one :user, through: :track
  has_one :genre, through: :track
  has_many :submissions, dependent: :destroy
  validates :description, presence: true

  default_scope { order(created_at: :desc) }

  pg_search_scope :search_by_instrument_and_genre,
                  associated_against: {
                    instrument: [:name],
                    genre: :name
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
