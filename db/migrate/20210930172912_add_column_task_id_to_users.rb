class AddColumnTaskIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :task_id, :integer
  end
end
