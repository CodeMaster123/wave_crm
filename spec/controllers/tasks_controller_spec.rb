require 'rails_helper'

RSpec.describe TasksController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
    @task = create(:task, company: @company)
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
    get :edit, id: @task.id
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    delete :destroy, id: @task.id
    expect(response).to have_http_status(:success)
  end

  describe 'PUT Update' do
    it 'should update a task record' do
      new_task = FactoryGirl.attributes_for(:task, title: 'Meeting with ramesh pawar', company: @company)
      put :update, id: @task.id, task: new_task
      expect(assigns(:task).title).to eq(new_task[:title])
    end
  end

  it 'should POST create method' do
    expect {
      post :create, task: FactoryGirl.attributes_for(:task, company: @company)
    }.to change(Task, :count).by(1)
  end

end
