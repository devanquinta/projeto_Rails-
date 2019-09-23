# Está no bando do admin e no model. Está ligado ao devise - ATENÇÃO

FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }####### PAGAR TALVEZ
    sequence(:password) { |n| "senha#{n}" }
  end
end
