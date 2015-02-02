FactoryGirl.define do
  factory :product do
    id 1
    name 'television'
    min_cost 5000
    max_cost 10000
    description 'It is an LCD tv'
    quantity 50
    company_id 1
  end
end
