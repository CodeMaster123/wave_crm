FactoryGirl.define do
  factory :product do
    id 1
    name 'television'
    min_cost 5000
    max_cost 10000
    description 'It is an LCD tv'
    company_id 1

    factory :inventory do
      id 1
      company_id 1
      product_id 1
      quantity 0
    end
  end
end
