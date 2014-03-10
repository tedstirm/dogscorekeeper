FactoryGirl.define do
  factory :dog_breed do
    name "test_dog_breed"
    association :dog_breed_group
  end
end