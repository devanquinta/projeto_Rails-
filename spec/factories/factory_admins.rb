# Está no bando do admin e no model. Está ligado ao devise - ATENÇÃO

FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "Email #{n}" }
    sequence(:encrypted_password) { |n| "senha#{n}" }
    # sequence(:reset_password_token) { |n| "confirmação da senha#{n}" }
  end
end
