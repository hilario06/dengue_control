# == Schema Information
#
# Table name: discarding_dengue_residents
#
#  id                   :bigint           not null, primary key
#  resident_id          :bigint           not null
#  is_dengue            :boolean
#  discarding_dengue_id :bigint           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class DiscardingDengueResident < ApplicationRecord
  belongs_to :resident
  belongs_to :discarding_dengue
end
