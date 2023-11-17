# == Schema Information
#
# Table name: vector_breeding_sites_pickups
#
#  id         :bigint           not null, primary key
#  date       :datetime
#  house_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class VectorBreedingSitesPickup < ApplicationRecord
  belongs_to :house
end
