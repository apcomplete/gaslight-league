class Trainer < ActiveRecord::Base
  belongs_to :team
  has_many :scorings

  accepts_nested_attributes_for :scorings
end
