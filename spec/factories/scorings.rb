FactoryGirl.define do
  factory :scoring do
    category
    trainer
    value 10
    initial_value 0
    delta_value 10
  end
end
