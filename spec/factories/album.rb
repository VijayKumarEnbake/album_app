FactoryGirl.define do
  factory :album, class: Album do |f|
    f.name "abc"
    f.description "qweqewfdfsfs"
    association :user
  end
end