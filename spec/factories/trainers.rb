FactoryGirl.define do
  factory :trainer do
    sequence(:name) { |n| "Trainer #{n}" }
    sequence(:handle) { |n| "trainer#{n}" }
    team
  end
end
