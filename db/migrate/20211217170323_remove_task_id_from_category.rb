class RemoveTaskIdFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :task_id
  end
end
