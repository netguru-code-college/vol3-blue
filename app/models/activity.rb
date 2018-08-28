class Activity < ApplicationRecord
  belongs_to :user
  has_many :requirements

  validates :name, presence: true
end
