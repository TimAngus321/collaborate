class CreateUserGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :user_genres do |t|
      t.references :genre, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
