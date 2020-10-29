class Lesson < ApplicationRecord
  belongs_to :user
  validates :title, :description, :location, :start_lesson, :end_lesson, :user, :price, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :description, :location],
    associated_against: {
      user: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
