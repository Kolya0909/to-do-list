class AddColumToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :category_name, :string
    add_column :categories, :task_id, :integer
  end
end
