class Team < ActiveRecord::Base
  has_many :trainers

  def score
    0
  end
end
