class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_team_scorer

  def after_sign_in_path_for(resource)
    trainers_path
  end

  private

  def set_team_scorer
    @team_scorer = TeamScorer.new(Team.all)
    @team_scorer.score_teams!
  end
end
