class CreateDiscardingDengueResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :discarding_dengue_residents do |t|
      t.references :resident, null: false, foreign_key: true
      t.boolean :is_dengue
      t.references :discarding_dengue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
