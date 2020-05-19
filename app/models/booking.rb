class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artpiece

  validates :star_date, presence: true
  validates :end_date, presence: true

end
