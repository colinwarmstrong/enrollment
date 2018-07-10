require 'rails_helper'

describe Course, type: :model do
  describe 'validations' do
    it{should validate_presence_of :title}
  end

  describe 'relationships' do
    it{should have_many :student_courses}
    it{should have_many :students}
  end
end
