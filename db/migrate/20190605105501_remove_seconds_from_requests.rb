class RemoveSecondsFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :start_second
    remove_column :requests, :end_second

  end
end
