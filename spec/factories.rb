FactoryBot.define do

  factory :admin, class: User do
    sequence(:username) { |n| "Admin #{n}" }
    password 'Password'
    role 1
  end
end
