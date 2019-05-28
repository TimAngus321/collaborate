class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :track, foreign_key: true
      t.references :instrument, foreign_key: true
      t.integer :start_second
      t.integer :end_second

      t.timestamps
    end
  end
end
