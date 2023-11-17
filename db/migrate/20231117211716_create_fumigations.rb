class CreateFumigations < ActiveRecord::Migration[7.0]
  def change
    create_table :fumigations do |t|
      t.datetime :date
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
