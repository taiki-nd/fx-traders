FactoryBot.define do
  factory :rule do
    name                      {Faker::Lorem.sentence}
    ashi_id                   {Faker::Number.between(from: 2, to: 15)}
    pair_id                   {Faker::Number.between(from: 2, to: 116)}
    issue_id                  {Faker::Number.between(from: 2, to: 4)}
    overview                  {Faker::Lorem.sentence}
    overview_content          {Faker::Lorem.sentence}
    entry                     {Faker::Lorem.sentence}
    exit                      {Faker::Lorem.sentence}
    summary                   {Faker::Lorem.sentence}

    association :user

    after(:build) do |rule|
      rule.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
