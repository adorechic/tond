# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    room { FactoryGirl.create(:room) }
    body "MyString"
  end
end
