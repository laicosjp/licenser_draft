FactoryBot.define do
  factory :nonadmin_account, class: Account do
    email { "nonadmin@example.com" }
    password { "123456" }
    password_confirmation { "123456" }
    admin { false }
  end

  factory :admin_account, class: Account do
    email { "admin@example.com" }
    password { "123456" }
    password_confirmation { "123456" }
    admin { true }
  end
end