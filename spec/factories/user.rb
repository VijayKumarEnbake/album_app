FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) {|n| "#{n + rand(100000)}dummy@gmail.com" }
    password 'mrstitches'
    
  end
end