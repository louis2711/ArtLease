class Artpiece < ApplicationRecord
  belongs_to :user
  belongs_to :artpiece
  has_one_attached :photo
end
