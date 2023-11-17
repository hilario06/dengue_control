class CreateJoinTableFactorsResidentDeaths < ActiveRecord::Migration[7.0]
  def change
    create_join_table :residents, :factor_deaths do |t|
      t.index [:resident_id, :factor_death_id], name: 'index_factor_deaths_residents'
      t.index [:factor_death_id, :resident_id], name: 'index_residents_factor_deaths'
    end
  end
end
