require 'rails_helper'

RSpec.describe Company, :type => :model do
  it 'should return team leaders' do
    company = create(:company)
    create(:user, account_type: 2)
    company.sales_users.first.account_type.should equal_to(2)
  end

  it 'should return sales_executives' do
    company = create(:company)
    create(:user, account_type: 3)
    company.sales_users.first.account_type.should equal_to(3)
  end

  it 'should return sales_users' do
    company = create(:company)
    create(:user, account_type: 2)
    create(:user, account_type: 3, email: 'testmail@gmail.com', mobile_no: '9878788787', id: 2)
    sales_users = company.users.where("account_type =2 OR account_type = 3")
    expect(company.sales_users.to_a).to eq(sales_users.to_a)
  end
end
