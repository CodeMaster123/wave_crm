require 'rails_helper'

RSpec.describe Event, :type => :model do
  it 'check if valid date is assign in starts_at' do
    event = build(:event, starts_at: Date.today-1)
    expect(event).to be_invalid
  end
end
