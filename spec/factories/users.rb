FactoryBot.define do
  factory :user do
    name {"user1"}
    email {"user1@user.com"}
    password {"user1pass"}
    password_confirmation {"user1pass"}

    trait :a do
      id { 1 }
      name {"user1"}
      email { "email@1.com" }
      password { "password1" }
    end

    trait :b do
      id { 2 }
      name {"user2"}
      email { "email@2.com" }
      password { "password2" }
    end

    trait :c do
      id { 3 }
      name {"user3"}
      email { "email@3.com" }
      password { "password3" }
    end
  end
end