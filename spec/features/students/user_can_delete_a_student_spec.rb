require 'rails_helper'

describe "user visits '/students'" do
  it "clicking delete next to a student's name deletes that student" do
    student = Student.create(name: 'Colin')

    visit students_path

    click_on 'Delete'

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content('Jill')
  end
end
