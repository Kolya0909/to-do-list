class AddColumntToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :name, :string
    add_column :users, :password_diges, :string
  end
end