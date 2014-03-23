# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    sequence(:name) { |n| "name_#{n}" }
    sequence(:alpha2) { |n| "alpha_#{n}" }
    association :country
  end
end
