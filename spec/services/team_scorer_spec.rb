require 'rails_helper'

RSpec.describe TeamScorer, type: :model do
  let(:teams) { create_list(:team, 3) }
  let!(:team_1_trainers) { create_list(:trainer, 2, team: teams[0]) }
  let!(:team_2_trainers) { create_list(:trainer, 2, team: teams[1]) }
  let!(:team_3_trainers) { create_list(:trainer, 2, team: teams[2]) }
  let!(:category) { create(:category) }
  let(:team_scorer) { TeamScorer.new(teams) }

  before do
    #team 1 scorings
    create(:scoring, category: category, trainer: team_1_trainers[0], delta_value: 1)
    #team 2 scorings
    create(:scoring, category: category, trainer: team_2_trainers[0], delta_value: 2)
    #team 3 scorings
    create(:scoring, category: category, trainer: team_3_trainers[0], delta_value: 3)
  end

  describe "top 3 scorers" do
    let(:team_scorer) { TeamScorer.new(teams, { top_3: [15, 10, 5], top_half: 0 }) }

    it "scores 15 points for the first place in each category" do
      team_scorer.score_teams!
      expect(team_scorer.score_for(teams[2])).to eql(15)
    end

    it "scores 10 points for the first place in each category" do
      team_scorer.score_teams!
      expect(team_scorer.score_for(teams[1])).to eql(10)
    end

    it "scores 5 points for the first place in each category" do
      team_scorer.score_teams!
      expect(team_scorer.score_for(teams[0])).to eql(5)
    end
  end

  describe "top half scorers" do
    let(:team_scorer) { TeamScorer.new(teams, { top_3: [0, 0, 0], top_half: 3 }) }

    before do
      #team 1 scorings
      create(:scoring, category: category, trainer: team_1_trainers[1], delta_value: 1)
      #team 2 scorings
      create(:scoring, category: category, trainer: team_2_trainers[1], delta_value: 4)
      #team 3 scorings
      create(:scoring, category: category, trainer: team_3_trainers[1], delta_value: 5)
    end

    it "scores 3 points for every player in the top half" do
      team_scorer.score_teams!
      scores = teams.map { |team| team_scorer.score_for(team) }
      expect(scores).to eql([0,3,6])
    end
  end

  describe "#score_for" do
    it "returns the score for a team" do
      team_scorer.score_teams!
      expect(team_scorer.score_for(teams[2])).to eql(18)
    end
  end

  describe "#top_team" do
    it "returns the highest scoring team" do
      team_scorer.score_teams!
      expect(team_scorer.top_team).to eql(teams[2])
    end
  end
end
