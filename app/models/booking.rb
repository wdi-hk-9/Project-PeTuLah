class Booking < ActiveRecord::Base
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :party_of, presence: true
  belongs_to :user
  belongs_to :tour

  def get_price
    self.party_of * self.tour.price
  end
end
