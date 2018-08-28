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
