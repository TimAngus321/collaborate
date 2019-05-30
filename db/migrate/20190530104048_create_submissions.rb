class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.references :user, foreign_key: true
      t.references :request, foreign_key: true
      t.text :description
      t.string :file_url
      t.boolean :selected

      t.timestamps
    end
  end
end
