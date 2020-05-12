FactoryBot.define do
  factory :event do
    name { Faker::Lorem.word }
    expiration_date { Faker::Time.between(from: DateTime.now, to: DateTime.now + 2.years) }
  end
end
