require 'rails_helper'

RSpec.describe Task, :type => :model do
  it 'check if valid date is assign in starts_at' do
    task = build(:task, starts_at: Date.today-1)
    expect(task).to be_invalid
  end
end
