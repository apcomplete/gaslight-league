class Trainer < ActiveRecord::Base
  belongs_to :team
  has_many :scorings
end
