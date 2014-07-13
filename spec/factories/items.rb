# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    association :sale
    title Faker::Commerce.product_name
    description Faker::Lorem.sentences(5).join('  ')
    initial_price 1000
    currency 'CLP'
  end
end
