FactoryBot.define do
  factory :record do
    date                      {'2021-10-19'}
    ashi_id                   {Faker::Number.between(from: 2, to: 15)}
    pair_id                   {Faker::Number.between(from: 2, to: 116)}
    pips                      {'-25.5'}
    entry_basis               {Faker::Lorem.sentence}
    issue_id                  {Faker::Number.between(from: 2, to: 4)}
    lose_reason_text          {Faker::Lorem.sentence}

    association :user

    after(:build) do |record|
      record.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end