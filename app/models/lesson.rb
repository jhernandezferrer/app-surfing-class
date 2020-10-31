class Lesson < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user

  validates :title, :description, :address, :city, :class_day, :lesson_start, :lesson_end, :user, :price, :student_limit, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :description, :city],
    associated_against: {
      user: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
