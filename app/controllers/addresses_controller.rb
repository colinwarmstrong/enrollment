class AddressesController < ApplicationController
  before_action :set_student, only: [:new, :create]

  def new
    @address = Address.new
  end

  def create
    address = @student.addresses.create(address_params)
    redirect_to student_path(address.student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street_address, :city, :state, :zip_code)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end
end
