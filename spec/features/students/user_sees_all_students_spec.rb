require 'rails_helper'

describe "user visits '/students'" do
  it 'sees a list of all student names' do
    student_1 = Student.create(name: 'Colin')
    student_2 = Student.create(name: 'Jill')
    student_3 = Student.create(name: 'Ben')

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
  end
end
