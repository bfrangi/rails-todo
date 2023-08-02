FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "some.email#{n}@some.domain" }
    password { 'some_password' }

    factory :user_with_tasks do
      transient do
        tasks_count { 5 }
      end

      after(:create) do |user, evaluator|
        create_list(:task, evaluator.tasks_count, user:)
      end
    end
  end
end
