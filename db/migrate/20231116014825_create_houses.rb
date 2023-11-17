class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :number_residents
      t.string :construction_material
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
