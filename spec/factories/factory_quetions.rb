FactoryBot.define do
  factory :question do
    sequence(:description) { |n| "Descrição#{n}" }
    sequence(:subject_id) { |n| "ID subject#{n}" }
    association :subject
  end
end
