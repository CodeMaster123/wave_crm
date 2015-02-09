require 'rails_helper'

RSpec.describe TargetsController, :type => :controller do
  before(:each) do |example|
    @company = create(:company)

    unless example.metadata[:skip_before]
      user = create(:user, account_type: 1)
      sign_in :user, user
    end
  end

  describe 'GET index' do
    it 'should GET index method for team leaders', :skip_before do
      user = create(:user)
      create(:target, company: @company)
      sign_in :user, user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  it 'should GET show method for admins' do
    target = create(:target, company: @company)
    get :show, id: target.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new method for admins' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit method for admins' do
    target = create(:target, company: @company)
    get :edit, id: target.id
    expect(response).to have_http_status(:success)
  end

  it 'should POST create method' do
    expect {
      post :create, target: FactoryGirl.attributes_for(:target, company: @company)
    }.to change(Target, :count).by(1)
  end

  describe 'Update method' do
    it 'should update target record' do
      target = create(:target, company: @company)
      new_target = FactoryGirl.attributes_for(:target, achived: 12323)
      put :update, id: target.id, target: new_target
      expect(assigns(:target).achived).to eq(new_target[:achived])
    end

    it 'should redirect to index after updating a record' do
      target = create(:target, company: @company)
      new_target = FactoryGirl.attributes_for(:target, achived: 12323)
      put :update, id: target.id, target: new_target
      expect(response).to have_http_status(:found)
    end
  end

  it 'should destroy a record' do
    target = create(:target, company: @company)
    delete :destroy, id: target.id
    expect(response).to have_http_status(:found)
  end
end
