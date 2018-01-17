FactoryGirl.define do
  factory :category do
    name { Faker::StarWars.character }
    state active
    vertical_id nil
  end
end