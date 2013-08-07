require 'test_helper'
require 'declarative_authorization/maintenance'

class CompaniesControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @company = companies(:one)

        @user = users(:superadmin)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:companies)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create company" do
        assert_difference('Company.count') do
            @new_company = Company.new(:company_address => 'cbs', :company_name => 'wave', :contact_number1 => 12313132 , :contact_number2 => 98899898)
            post :create, company: { company_address: @new_company.company_address, company_name: @new_company.company_name, contact_number1: @new_company.contact_number1, contact_number2: @new_company.contact_number2 }
        end

        assert_redirected_to companies_path
    end

    test "should show company" do
        get :show, id: @company
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @company
        assert_response :success
    end

    test "should update company" do
        put :update, id: @company, company: { company_address: @company.company_address, company_name: @company.company_name, contact_number1: @company.contact_number1, contact_number2: @company.contact_number2 }
        assert_redirected_to companies_path
    end

    test "should destroy company" do
        assert_difference('Company.count', -1) do
            delete :destroy, id: @company
        end

        assert_redirected_to companies_path
    end
end
