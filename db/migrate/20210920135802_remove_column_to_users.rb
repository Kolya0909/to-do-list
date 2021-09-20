class RemoveColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password_diges, :string
  end
end
