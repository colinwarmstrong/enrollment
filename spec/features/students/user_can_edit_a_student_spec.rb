require 'rails_helper'

describe "user visits '/students/:id/edit'" do
  it 'filling in a new name and clicking submit edits a student' do
    student = Student.create(name: 'Colin')

    visit edit_student_path(student)

    fill_in :student_name, with: 'Jill'

    click_on 'Submit'

    expect(current_path).to eq(student_path(1))
    expect(page).to have_content('Jill')
  end
end
