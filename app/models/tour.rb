class Tour < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_many :bookings
  has_many :users, through: :bookings
end
