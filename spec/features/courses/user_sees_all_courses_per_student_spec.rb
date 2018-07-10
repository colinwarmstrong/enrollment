require 'rails_helper'

describe "user visits '/students/:id'" do
  it 'sees a list of all the courses associated with that student' do
    student = Student.create(name: 'Colin')
    course_1 = student.courses.create(title: 'Math')
    course_2 = student.courses.create(title: 'Science')

    visit student_path(student)

    expect(page).to have_content(course_1.title)
    expect(page).to have_content(course_2.title)
  end
end
