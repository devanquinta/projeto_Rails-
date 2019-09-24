FactoryBot.define do
  factory :admin_statistic  do
    sequence(:event) { |n| "TOTAL_USERS#{n}" }####### PAGAR TALVEZ
    sequence(:value) { |n| "TOTAL_QUESTIONS#{n}" }
  end
end

