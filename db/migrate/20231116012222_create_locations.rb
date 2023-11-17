class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :parent_id, index: true

      t.timestamps
    end

    add_foreign_key :locations, :locations, column: :parent_id
  end
end
