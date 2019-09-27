FactoryBot.define do
  factory :user_profile do
    sequence(:address) { |n| "Endereço#{n}" }####### PAGAR TALVEZ
    sequence(:gender) { |n| "Genero#{n}" }
    sequence(:birthdate) { |n| "Data de nascimento#{n}" }
    sequence(:user_id) { |n| "ID#{n}" }
    sequence(:zip_code) { |n| "Zip Code#{n}" }
    association :user
  end
end


