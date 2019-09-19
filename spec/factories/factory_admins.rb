# Está no bando do admin e no model. Está ligado ao devise - ATENÇÃO

FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }####### PAGAR TALVEZ
    # encrypted_password {"123456"}####### PAGAR TALVEZ
    # # sequence(:email) { |n| "Email #{n}" }
    sequence(:password) { |n| "senha#{n}" }
    # sequence(:reset_password_token) { |n| "confirmação da senha#{n}" }
  end
end
