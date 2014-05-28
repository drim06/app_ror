FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :character do
    name  "Michael Hartl"
    age   22
  end

  factory :anecdote do
    content "Lorem ipsum"
    user
  end

  factory :scene do
    content "Lorem ipsum"
    user
  end
end
