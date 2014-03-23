FactoryGirl.define do
  factory :dog_breed_group do
    sequence(:name) { |n| "dog_breed_name_group_#{n}" }
  end
end