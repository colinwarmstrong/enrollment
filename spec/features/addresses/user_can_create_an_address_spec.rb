require 'rails_helper'

describe "user visits '/students/:id/addresses/new'" do
  it 'filling in the required information and clicking submit creates a new address' do
    student = Student.create(name: 'Colin')

    visit new_student_address_path(student)

    fill_in :address_description, with: 'Summer home'
    fill_in :address_street_address, with: '123 Main St'
    fill_in :address_city, with: 'Minooka'
    fill_in :address_state, with: 'IL'
    fill_in :address_zip_code, with: 60447

    click_on 'Submit'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('Summer home')
    expect(page).to have_content('123 Main St')
    expect(page).to have_content('Minooka')
    expect(page).to have_content('IL')
    expect(page).to have_content('60447')    
  end
end
