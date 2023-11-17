class CreateFactorDeaths < ActiveRecord::Migration[7.0]
  def change
    create_table :factor_deaths do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
