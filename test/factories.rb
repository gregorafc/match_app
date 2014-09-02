FactoryGirl.define do
  factory :sportcenter do
    name { |n| "Trening facility: #{n}" }
    adress "London"
    phone "123456789"
  end

  factory :field do
    name { |n| "Field : #{n}"}
  end

  factory :player do
    name "Jon"
    surname "Doe"
    email { |n| "jon#{n}@doe.com"}
  end

  factory :event do
    game_name "Derby"
  end

end
