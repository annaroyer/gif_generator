FactoryBot.define do

  factory :admin, class: User do
    username sequence(:username) { |n| "Admin #{n}" }
    password 'Password'
    role 1
  end
end
