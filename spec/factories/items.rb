# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    sale
    title Faker::Commerce.product_name
    description Faker::Lorem.sentences(5)
    initial_price 1000
    currency 'CLP'
  end
end
