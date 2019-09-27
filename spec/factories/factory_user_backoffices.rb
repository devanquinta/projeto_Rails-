FactoryBot.define do
  factory :user_backoffice do
    sequence(:created_at) { |n| "data de criação#{n}" }####### PAGAR TALVEZ
    sequence(:updated_at) { |n| "termino#{n}" }
  end
end

