require 'rails_helper'

describe "user visits '/students/:id'" do
  it 'sees all the addresses associated with a student' do
    student = Student.create(name: 'Colin')
    address_1 = student.addresses.create(
      description: 'Summer home',
      street_address: '123 Main St',
      city: 'Minooka',
      state: 'Illinois',
      zip_code: 60447)
    address_2 = student.addresses.create(
      description: 'Winter home',
      street_address: '321 Oak St',
      city: 'Denver',
      state: 'Colorado',
      zip_code: 80210)

    visit student_path(student)

    expect(page).to have_content(address_1.description)
    expect(page).to have_content(address_1.street_address)
    expect(page).to have_content(address_1.city)
    expect(page).to have_content(address_1.state)
    expect(page).to have_content(address_1.zip_code)
    expect(page).to have_content(address_2.description)
    expect(page).to have_content(address_2.street_address)
    expect(page).to have_content(address_2.city)
    expect(page).to have_content(address_2.state)
    expect(page).to have_content(address_2.zip_code)
  end
end
