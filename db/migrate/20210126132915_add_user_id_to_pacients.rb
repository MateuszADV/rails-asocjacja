class AddUserIdToPacients < ActiveRecord::Migration[6.1]
  def change
    add_column :pacients, :user_id, :integer
    add_index :pacients, :user_id
  end
end
