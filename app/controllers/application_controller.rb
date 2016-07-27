class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @teams = Team.all
    @categories = Category.all
    @team_scorer = TeamScorer.new(@teams)
    @team_scorer.score_teams!
  end

  def after_sign_in_path_for(resource)
    trainers_path
  end
end
