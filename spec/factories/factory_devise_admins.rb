FactoryBot.define do
  factory :devise_admin do######################
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@admin.com" }
    password { "123456" }
  end
end