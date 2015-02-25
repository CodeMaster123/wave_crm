class EmployeesController < ApplicationController
    filter_access_to :all
    respond_to :html, :json

    def index
        @employees = Employee.all

        respond_with @employees
    end

    def show
        @employee = Employee.find(params[:id])

        respond_with @employee
    end

    def new
        @employee = Employee.new

        respond_with @employee
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.new(params[:employee])

        @employee.save
        respond_with @employee
    end

    def update
        @employee = Employee.find(params[:id])

        @employee.update_attributes(params[:employee])
        respond_with @employee
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy

        respond_with @employee
    end
end
