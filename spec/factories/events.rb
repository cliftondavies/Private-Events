require 'faker'

FactoryBot.define do
  factory :event, aliases: [:attended_event] do
    creator
    description { Faker::Lorem.sentence }
    event_date { Faker::Date.in_date_period }
    location { Faker::Address.full_address }
  end
end
