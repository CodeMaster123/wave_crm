FactoryGirl.define do
  factory :inventory_addition do
    id 1
    addition_date Date.today-2.days
    quantity 100
    company_id 1
    product_id 1
    inventory_id 1
  end
end
