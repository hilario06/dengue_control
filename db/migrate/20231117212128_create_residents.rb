class CreateResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :residents do |t|
      t.boolean :is_live
      t.references :house, null: false, foreign_key: true
      t.integer :age
      t.string :dni
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
