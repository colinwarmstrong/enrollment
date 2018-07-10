require 'rails_helper'

describe "user visits '/courses/:id'" do
  it 'sees a list of all the students associated with that course' do
    course = Course.create(title: 'Math')
    student_1 = course.students.create(name: 'Colin')
    student_2 = course.students.create(name: 'Jill')

    visit course_path(course)

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
end
