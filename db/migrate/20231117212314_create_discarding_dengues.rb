class CreateDiscardingDengues < ActiveRecord::Migration[7.0]
  def change
    create_table :discarding_dengues do |t|
      t.integer :number_dengue_cases
      t.references :house, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
