# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ApplicationRecord
  belongs_to :user
  has_many :locations, dependent: :destroy
  has_many :requirements, dependent: :destroy

  validates :name, presence: true
end
