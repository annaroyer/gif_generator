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
    sequence(:image_path) { |n| "http://image.giphy.com/#{n}"}
  end

  factory :favorite do
    gif
    user
  end
end
