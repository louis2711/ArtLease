class Artpiece < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_artist,
    against: [ :title, :artist ],
    using: {
      tsearch: { prefix: true }
    }
end
