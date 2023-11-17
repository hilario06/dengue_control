# == Schema Information
#
# Table name: fumigations
#
#  id         :bigint           not null, primary key
#  date       :datetime
#  house_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fumigation < ApplicationRecord
  belongs_to :house
end
