require 'faker'

FactoryBot.define do
  factory :user, aliases: %i[creator attendee] do
    username { Faker::Internet.username(specifier: 4..15) }
  end
end
