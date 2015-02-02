require 'rails_helper'

RSpec.describe Contact, :type => :model do
  before(:each) do
    create(:company)
  end

  it 'should return address for geocoding' do
    user = create(:contact, address: 'New address')
    expect(user.geocoding_address).to eq('New address')
  end

  it 'should fetch full name' do
    user = create(:contact, first_name: 'vivek', middle_name: 'pandharinath', last_name: 'varade')
    expect(user.full_name).to eq('Vivek Pandharinath Varade')
  end

  it 'should fetch first and last name' do
    user = create(:contact, first_name: 'vivek', last_name: 'varade')
    expect(user.first_last_name).to eq('Vivek Varade')
  end
end
