require 'rails_helper'

describe "user visits '/students/new'" do
  it 'filling in a name and clicking submit creates a student' do
    visit new_student_path

    fill_in :name, with: 'Colin'

    click_on 'Submit'

    expect(current_path).to eq(student_path(1))
    expect(page).to have_content('Colin')
  end
end
