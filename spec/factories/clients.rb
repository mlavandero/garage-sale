# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    email "MyString"
    first_name "MyString"
    last_name "MyString"
    mobile_phone "MyString"
    landline_phone "MyString"
  end
end
