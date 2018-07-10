require 'rails_helper'

describe "user visits '/students/:id'" do
  it 'sees the name of a student' do
    student = Student.create(name: 'Colin')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
