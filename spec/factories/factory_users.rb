FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }####### PAGAR TALVEZ
    sequence(:password) { |n| "senha#{n}" }
    sequence(:encrypted_password) { |n| "senha#{n}" }
    # sequence(:reset_password_token) { |n| "confirm senha#{n}" }
    sequence(:first_name) { |n| "Email #{n}" }
    sequence(:last_name) { |n| "senha#{n}" }
    # association user_profile
  end
end
