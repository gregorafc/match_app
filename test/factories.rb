FactoryGirl.define do
  factory :sportcenter do
    name { |n| "Trening facility: #{n}" }
    adress "London"
    phone "123456789"
  end

  factory :field do
    name { |n| "Field : #{n}"}
  end

end
