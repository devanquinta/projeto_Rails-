# Está no bando do admin e no model. Está ligado ao devise - ATENÇÃO

FactoryBot.define do
  factory :user_statistic do
    sequence(:right_questions) { |n| "Right questions#{n}" }
    sequence(:wrong_questions) { |n| "Wrong questions#{n}" }
    association :user
  end
end
