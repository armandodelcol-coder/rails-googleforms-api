FactoryBot.define do
  time = FFaker::Time.between Date.yesterday - 50, Date.today - 1

  factory :user do
    uid          { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    name         { FFaker::Name.name }
    nickname     { FFaker::Internet.user_name }
    password     { FFaker::Internet.password }
    provider     { 'email' }
    confirmed_at { time }
    created_at   { time }
    updated_at   { time }
  end
end
