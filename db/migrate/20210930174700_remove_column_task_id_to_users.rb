class RemoveColumnTaskIdToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :task_id
  end
end
