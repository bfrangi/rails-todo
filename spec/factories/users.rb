FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "some.email#{n}@some.domain" }
    password { 'some_password' }
  end
end
