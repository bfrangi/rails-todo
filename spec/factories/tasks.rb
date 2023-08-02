FactoryBot.define do
  factory :task do
    content { "MyText" }
    user
    completed { nil }

    trait :completed do
      completed { 1.day.ago }
    end
  end
end
