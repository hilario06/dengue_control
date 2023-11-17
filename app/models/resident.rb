# == Schema Information
#
# Table name: residents
#
#  id            :bigint           not null, primary key
#  is_live       :boolean
#  house_id      :bigint           not null
#  age           :integer
#  dni           :string
#  first_name    :string
#  last_name     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  date_of_death :date
#
class Resident < ApplicationRecord
  belongs_to :house
  has_and_belongs_to_many :factor_deaths
end
