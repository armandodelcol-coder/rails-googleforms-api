FactoryBot.define do
  factory :user do
    uid          { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    name         { FFaker::Name.name }
    nickname     { FFaker::Internet.user_name }
    password     { FFaker::Lorem.word }
    provider     'email'
    confirmed_at { FFaker::Time.between Date.yesterday – 50, Date.today - 1 }
    created_at   { FFaker::Time.between Date.yesterday – 50, Date.today - 1 }
    updated_at   { FFaker::Time.between Date.yesterday – 50, Date.today - 1 }
  end
end
