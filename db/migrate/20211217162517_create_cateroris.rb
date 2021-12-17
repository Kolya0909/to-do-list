class CreateCateroris < ActiveRecord::Migration[6.1]
  def change
    create_table :cateroris do |t|

      t.timestamps
    end
  end
end
