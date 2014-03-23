FactoryGirl.define do
  factory :dog_breed do
    sequence(:name) { |n| "dog_breed_name_#{n}" }
    association :dog_breed_group
  end
end