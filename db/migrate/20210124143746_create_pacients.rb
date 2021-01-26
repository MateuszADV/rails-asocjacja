class CreatePacients < ActiveRecord::Migration[6.1]
  def change
    create_table :pacients do |t|
      t.string :name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
