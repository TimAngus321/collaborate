class AddFileToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :file, :string
  end
end
