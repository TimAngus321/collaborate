class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :bpm
      t.string :time_signature
      t.string :key
      t.integer :duration
      t.string :file_url

      t.timestamps
    end
  end
end
