class AddStartToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :region_start, :integer
    add_column :requests, :region_end, :integer
  end
end
