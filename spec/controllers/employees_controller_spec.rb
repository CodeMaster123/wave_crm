require 'rails_helper'

RSpec.describe EmployeesController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    create(:employee)
    get :edit, id: 1
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    employee = create(:employee)
    delete :destroy, id: employee.id
    expect(response).to have_http_status(:found)
  end

  it 'should GET show' do
    create(:employee)
    get :show, id: 1
    expect(response).to have_http_status(:success)
  end

  describe 'PUT Update' do
    it 'should update a employee record' do
      employee = create(:employee)
      new_employee = FactoryGirl.attributes_for(:employee, title: 'Meeting with ramesh pawar')
      put :update, id: employee.id, employee: new_employee
      expect(assigns(:employee).first_name).to eq(new_employee[:first_name])
    end
  end

end
