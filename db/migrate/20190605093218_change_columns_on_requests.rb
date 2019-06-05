class ChangeColumnsOnRequests < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :region_start, :float
    change_column :requests, :region_end, :float
  end
end
