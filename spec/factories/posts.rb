FactoryBot.define do
  factory :post do
    title { Faker::Hipster.unique.word }
    description { Faker::Hipster.unique.word }
    username { Faker::FunnyName.name }
  end
end
