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
    user_id 1
    field_id 1
    date_take_place '2014-10-10'
  end

  factory :user do
    name "joe"
    email { |n| 'test#{n}@example.com' }
    password 'f4k3p455w0rd'
  end

end
