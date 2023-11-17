class AddDateOfDeathToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :date_of_death, :date
  end
end
