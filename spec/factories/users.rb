FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Everyman'
    email 'example@example.com'
    password 'please'
    password_confirmation 'please'
  end
end