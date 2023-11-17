# == Schema Information
#
# Table name: houses
#
#  id                    :bigint           not null, primary key
#  address               :string
#  number_residents      :integer
#  construction_material :string
#  location_id           :bigint           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class House < ApplicationRecord
  belongs_to :location_id
end
