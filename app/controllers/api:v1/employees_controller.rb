class API::V1::EmployeesController < ApplicationController
  #respond_to :json, :xml

 def index
   @employees= Employee.all
   #respond_with(@employees)
  end
   
  def show
    @employees=Employee.find(params[:id])
    #respond_with(@employees)
  end

  def create
    @employee = Employee.create(:prefix => params[:prefix], :first_name => params[:first_name], :last_name => params[:last_name], :title => params[:title], :company_name => params[:company_name], :email => params[:email], :phone_number => params[:phone_number])
    render "show"
  end
end
