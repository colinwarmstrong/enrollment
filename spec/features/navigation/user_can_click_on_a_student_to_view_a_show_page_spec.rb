require 'rails_helper'

describe "user visits '/students'" do
  it "clicking a student's name takes user to that student show page" do
    student = Student.create(name: 'Colin')

    visit students_path

    click_on 'Colin'

    expect(current_path).to eq(student_path(student))
  end
end
