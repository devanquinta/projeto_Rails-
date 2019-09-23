# Está no bando do admin e no model. Está ligado ao devise - ATENÇÃO

FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }####### PAGAR TALVEZ
    sequence(:password) { |n| "senha#{n}" }
    sequence(:reset_password_token) { |n| "senha confirm#{n}" }
    sequence(:reset_password_sent_at) { |n| "senha time#{n}" }

  end
end
