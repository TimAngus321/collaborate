class AddFieldsToSubmissions < ActiveRecord::Migration[5.2]
  def change
  remove_column :submissions, :file_url, :string
  add_column :submissions, :name, :string
  add_column :submissions, :file, :string
  add_column :submissions, :bpm, :integer
  add_column :submissions, :time_signature, :string
  add_column :submissions, :key, :string
  add_column :submissions, :duration, :integer
  end
end
