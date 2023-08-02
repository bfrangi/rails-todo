FactoryBot.define do
  factory :user do
    email { 'some.email@some.domain' }
    password { 'some_password' }
  end
end
