class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable


  validates :user_name, presence: true
  has_many :activities
end
