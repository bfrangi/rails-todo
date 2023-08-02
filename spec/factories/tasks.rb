FactoryBot.define do
  factory :task do
    content { "MyText" }
    user
  end
end
