FactoryBot.define do
  factory :subject do
    sequence(:description) { |n| "Descrição#{n}" }
    sequence(:questions_count) { |n| "Soma das descrições#{n}" }
  end
end
