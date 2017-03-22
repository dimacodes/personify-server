FactoryGirl.define do
  factory :person do
    name { Faker::Lorem.word }
    favoriteCity { Faker::Lorem.word }
  end
end
