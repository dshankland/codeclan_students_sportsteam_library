class Team

  attr_reader :teamname, :players, :points
  attr_accessor :coach

  def initialize(teamname, players, coach)
    @teamname = teamname
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def contains_player(player)
    return @players.include?(player)
  end

  def add_points(win_lose_draw)
    @points += 3 if win_lose_draw == 'win'
    @points += 1 if win_lose_draw == 'draw'
  end

end
