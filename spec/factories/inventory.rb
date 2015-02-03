FactoryGirl.define do
  factory :product do
    name 'television'
    min_cost 5000
    max_cost 10000
    description 'It is an LCD tv'
    quantity 50
    company_id 1
  end
end
