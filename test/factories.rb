FactoryGirl.define do
  sequence(:random_number) { |n| Kernel.rand(10**3) }
  sequence(:random_word)   { |n| Faker::Lorem.word }
  sequence(:random_date)   { |n| (-100..100).to_a.sample.days.from_now }

  factory :thing do
    number   { generate(:random_number) }
    category { generate(:random_word) }
    date     { generate(:random_date) }
  end
end
