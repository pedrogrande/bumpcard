# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    user nil
    name "MyString"
    number "MyString"
  end
end
