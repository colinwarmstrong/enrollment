class Address < ApplicationRecord
  validates_presence_of :description, :street_address, :city, :state, :zip_code

  belongs_to :student
  has_many :student_courses
  has_many :courses, through: :student_courses
end
