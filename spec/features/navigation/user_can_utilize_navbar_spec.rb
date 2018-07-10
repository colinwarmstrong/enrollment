require 'rails_helper'

describe "user visits any page" do
  it "clicking 'Students' in the navbar takes user to the students index " do
    visit new_student_path

    click_on 'Students'

    expect(current_path).to eq(students_path)
  end
end
