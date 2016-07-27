class TrainerForm
  include ActiveModel::Model

  attr_accessor :scorings

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  def scorings_attributes=(attrs)
    @scorings ||= []
    attrs.each do |id, scoring_params|
      scoring = Scoring.find(scoring_params["id"])
      scoring.assign_attributes({
        value: scoring_params["value"].to_f,
        delta_value: scoring_params["value"].to_f - scoring.initial_value
      })
      @scorings.push(scoring)
    end
  end

  def persisted?
    true
  end

  private

  def persist!
    ActiveRecord::Base.transaction do
      @scorings.each do |scoring|
        scoring.save!
      end
    end
  end
end
