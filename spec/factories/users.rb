FactoryGirl.define do
<<<<<<< HEAD
  factory :user do
    name "Test User"
=======
  factory :user do    confirmed_at Time.now
    name "Test User"
    email "test@example.com"
    password "please123"
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
  end
end
