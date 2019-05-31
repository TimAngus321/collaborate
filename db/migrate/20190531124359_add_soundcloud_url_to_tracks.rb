class AddSoundcloudUrlToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :soundcloud_url, :text
  end
end
