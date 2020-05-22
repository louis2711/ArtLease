class Review < ApplicationRecord
  belongs_to :artpiece
  validates :rating, inclusion: { in: 1..5 }
end
