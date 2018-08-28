# == Schema Information
#
# Table name: requirements
#
#  id           :integer          not null, primary key
#  weather_type :string
#  operator     :string(1)
#  value        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  activity_id  :integer
#

class Requirement < ApplicationRecord
  OPERATORS = ['>', '<', '=']

  validates :weather_type, :operator, :value,
    presence: true

  validates :weather_type,
    length: {minimum: 2, maximum: 30},
    format: /[a-zA-Z]{2,}/

    validates :value,
    format: /[0-9]/

    belongs_to :activity
end
