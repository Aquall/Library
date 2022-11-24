FactoryBot.define do
  factory :book do
      sequence(:name) { Faker::Book.title }
      year {Faker::Number.between(from: 1900, to: DateTime.now.to_date.year)}
      trait :invalid_older_year do
          year { DateTime.now.to_date.year + 1 }
      end
  end
end
