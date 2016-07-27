class TeamScorer
  def initialize(teams, scoring_schema = {top_3: [15, 10, 5], top_half: 3})
    @teams = teams
    @scores = teams.inject({}) do |acc, team|
      acc[team.id] = 0
      acc
    end
    @scoring_schema = scoring_schema
  end

  def score_teams!
    Category.all.each do |category|
      scorings = category.scorings.ordered
      score_top_3!(scorings)
      score_top_half!(scorings)
    end
  end

  def score_for(team)
    return @scores[team.id]
  end

  def top_team
    top_id = @scores.max_by { |k, v| v }[0]
    @teams.select { |team| team.id == top_id }.first
  end

  private

  def score_top_3!(scorings)
    @scoring_schema[:top_3].each_with_index do |score, idx|
      scoring = scorings[idx]
      @scores[scoring.team.id] += score
    end
  end

  def score_top_half!(scorings)
    top_half = scorings.first(scorings.length / 2)
    top_half.each do |scoring|
      @scores[scoring.team.id] += @scoring_schema[:top_half]
    end
  end
end
