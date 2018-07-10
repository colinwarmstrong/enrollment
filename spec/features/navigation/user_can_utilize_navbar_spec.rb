require 'rails_helper'

describe "user visits any page" do
  it "clicking 'Students' in the navbar takes user to the students index" do
    visit new_student_path

    click_on 'Students'

    expect(current_path).to eq(students_path)
  end

  it "clicking 'Create New Student' in the navbar takes user to the create new student page" do
    visit students_path

    click_on 'Create New Student'

    expect(current_path).to eq(new_student_path)
  end
end
