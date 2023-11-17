class CreateVectorBreedingSitesPickups < ActiveRecord::Migration[7.0]
  def change
    create_table :vector_breeding_sites_pickups do |t|
      t.datetime :date
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
