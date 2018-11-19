FactoryBot.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password {'secret'}
    password_confirmation {'secret'}
    confirmed_at { Date.today }
    confirmation_sent_at { Date.today }
    role {0}

    trait :with_admin do
      after(:create) do |user|
        user.role(:admin)
      end
    end

    trait :confirmed do
      after(:create) do |user|
        user.confirm
      end
    end
    
  end
end
