class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :file_url
  end
end
