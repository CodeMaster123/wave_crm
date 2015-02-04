require 'rails_helper'

RSpec.describe PartialPaymentsController, :type => :controller do

  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
    @transaction = create(:transaction)
  end

  describe 'POST create' do
    it 'should create a record for partial_payment' do
      partial_payment = FactoryGirl.attributes_for(:partial_payment, transaction_id: @transaction.id)
      expect{
        post :create, partial_payment: partial_payment
      }.to change(PartialPayment, :count).by(1)
    end
  end

end
