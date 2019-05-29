class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :biography, :text
    add_column :users, :facebook_url, :string
    add_column :requests, :description, :text
  end
end
