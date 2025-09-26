class AddDeletedAtToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :deleted_at, :datetime
  end
end
