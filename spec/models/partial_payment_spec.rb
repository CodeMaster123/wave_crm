require 'rails_helper'

RSpec.describe PartialPayment, :type => :model do
  it 'should check if payment has not exceeded the total amount' do
    transaction = create(:transaction)
    create(:partial_payment, transaction_id: transaction.id)
    PartialPayment.first.check_if_exceeds.should == nil
  end

  it 'should check if payment has exceeded the total amount' do
    transaction = create(:transaction, amount: 1000)
    build(:partial_payment, transaction_id: transaction.id, amount_paid: 1500).should_not be_valid
  end
end
