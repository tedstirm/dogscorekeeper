FactoryGirl.define do
  factory :user do
    email "test_user@test.com"
    password "testuser_testuser"
  end

  factory :admin, class:User do
    email "test_admin@admin.com"
    password "testadmin_testadmin"
    after(:create) do |user, evaluator|
      user.add_role :admin
    end
  end
end