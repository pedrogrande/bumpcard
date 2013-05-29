# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    user nil
    name "MyString"
    street1 "MyString"
    street2 "MyString"
    city "MyString"
    postcode "MyString"
    country "MyString"
  end
end
