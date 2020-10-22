class Lesson < ApplicationRecord
  belongs_to :user
  validates :title, :description, :location, :start_lesson, :end_lesson, :user, presence: true
end
