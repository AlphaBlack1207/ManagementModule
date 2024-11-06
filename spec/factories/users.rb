FactoryBot.define do
  factory :user do
    secuence(:email) { |n| "foo#(n)@example.com"}
  end
end
