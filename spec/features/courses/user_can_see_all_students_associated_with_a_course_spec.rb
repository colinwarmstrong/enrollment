require 'rails_helper'

describe "user visits '/students/:id'" do
  it 'sees all the courses associated with that student' do
    course = Course.create(title: 'Math')
    student_1 = course.students.create(name: 'Colin')
    student_2 = course.students.create(name: 'Jill')

    visit course_path(course)

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
end
