# == Schema Information
#
# Table name: factor_deaths
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class FactorDeath < ApplicationRecord
  has_and_belongs_to_many :residents
end
