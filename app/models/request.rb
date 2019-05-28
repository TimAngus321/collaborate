class Request < ApplicationRecord
  belongs_to :instrument
  belongs_to :track
end
