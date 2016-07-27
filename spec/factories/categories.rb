FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "Category #{n}" }
    sequence(:description) { |n| "Description for Category #{n}" }
    help_text "Help Text"
  end
end
