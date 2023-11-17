# == Schema Information
#
# Table name: discarding_dengues
#
#  id                  :bigint           not null, primary key
#  number_dengue_cases :integer
#  house_id            :bigint           not null
#  date                :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class DiscardingDengue < ApplicationRecord
  belongs_to :house
end
