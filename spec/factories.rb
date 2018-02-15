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
    category
    sequence(:image_path) { |n| "http://image.giphy.com/#{n}"}
  end

  factory :favorite do
    gif
    user
  end

  factory :category do
    sequence(:name) { |n| "Category#{n}"}
  end
end
