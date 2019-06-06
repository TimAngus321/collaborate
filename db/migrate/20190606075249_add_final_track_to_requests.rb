class AddFinalTrackToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :final_track, :string
  end
end
