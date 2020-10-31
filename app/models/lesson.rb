class Lesson < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :title, :description, :address, :city, :class_day, :lesson_start, :lesson_end, :user, :price, :student_limit, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
