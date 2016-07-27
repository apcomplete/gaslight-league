class Scoring < ActiveRecord::Base
  belongs_to :category
  belongs_to :trainer
  has_one :team, through: :trainer

  def self.ordered
    order("delta_value DESC")
  end
end
