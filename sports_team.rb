class Team

  attr_reader :teamname, :players
  attr_accessor :coach

  def initialize(teamname, players, coach)
    @teamname = teamname
    @players = players
    @coach = coach
  end

end
