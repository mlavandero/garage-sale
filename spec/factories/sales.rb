# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    client
    title Faker::Commerce.product_name
    description Faker::Lorem.paragraph(3)
    active false
    expiration_date Date.today+30.days
  end
end
