FactoryBot.define do

  factory :admin, class: User do
    sequence(:username) { |n| "Admin #{n}" }
    password 'Password'
    role 1
  end

  factory :user do
    sequence(:username) { |n| "User #{n}" }
    password 'Password'
    role 0
  end

  factory :gif do
    category 'awesome'
    image_path 'http://media2.giphy.com/media/FiGiRei2ICzzG/200.gif'
  end
end
