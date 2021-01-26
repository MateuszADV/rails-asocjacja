class AddUserIdToDoktor < ActiveRecord::Migration[6.1]
  def change
    add_column :doktors, :user_id, :integer
    add_index :doktors, :user_id
  end
end
