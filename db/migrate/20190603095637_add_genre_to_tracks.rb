class AddGenreToTracks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :genre, foreign_key: true
  end
end
