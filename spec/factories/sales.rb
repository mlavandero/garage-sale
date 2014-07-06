# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    title Faker::Commerce.product_name
    description Faker::Lorem.paragraph(3)
  end
end
