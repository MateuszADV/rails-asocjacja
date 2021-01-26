class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.references :pacient, null: false, foreign_key: true
      t.references :doktor, null: false, foreign_key: true
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
