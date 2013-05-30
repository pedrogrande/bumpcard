# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    title "MyString"
    company "MyString"
    company_url "MyString"
    user nil
  end
end
