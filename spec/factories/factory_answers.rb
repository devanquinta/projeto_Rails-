
FactoryBot.define do
  factory :answer do
    sequence(:description) { |n| "Descrição#{n}" }
    sequence(:question_id) { |n| "Id question#{n}" }
    sequence(:correct) { |n| "Se está correta#{n}" }
  end
end
