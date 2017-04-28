FactoryGirl.define do
  factory :contact do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    message { Faker::Lorem.paragraph }
  end
end
