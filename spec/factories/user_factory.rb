FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end

  factory :gm_user, class: User do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    role "game_master"
  end
end
