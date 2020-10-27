class Lesson < ApplicationRecord
  belongs_to :user
  validates :title, :description, :location, :start_lesson, :end_lesson, :user, :price, presence: true
end
