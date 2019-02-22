class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :contact, :string
    add_column :users, :profilepic, :string
  end
end
