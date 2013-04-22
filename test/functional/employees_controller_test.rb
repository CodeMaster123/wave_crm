require 'test_helper'
require 'declarative_authorization/maintenance'

class EmployeesControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @employee = employees(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:employees)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create employee" do
        assert_difference('Employee.count') do
            post :create, employee: { address: @employee.address, age: @employee.age, first_name: @employee.first_name, last_name: @employee.last_name, middle_name: @employee.middle_name, mobile_no: @employee.mobile_no, sales_executve_id: @employee.sales_executve_id, team_leader_id: @employee.team_leader_id }
        end

        assert_redirected_to employee_path(assigns(:employee))
    end

    test "should show employee" do
        get :show, id: @employee
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @employee
        assert_response :success
    end

    test "should update employee" do
        put :update, id: @employee, employee: { address: @employee.address, age: @employee.age, first_name: @employee.first_name, last_name: @employee.last_name, middle_name: @employee.middle_name, mobile_no: @employee.mobile_no, sales_executve_id: @employee.sales_executve_id, team_leader_id: @employee.team_leader_id }
        assert_redirected_to employee_path(assigns(:employee))
    end

    test "should destroy employee" do
        assert_difference('Employee.count', -1) do
            delete :destroy, id: @employee
        end

        assert_redirected_to employees_path
    end
end
