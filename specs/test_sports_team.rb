require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TeamTest < MiniTest::Test

  def test_get_teamname
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal('Rangers', team.teamname)
  end

  def test_get_players
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal(['Novo', 'Prso'], team.players)
  end

  def test_get_coach
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal('StevieG', team.coach)
  end

  def test_set_coach
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    team.coach = 'Lenny'
    assert_equal('Lenny', team.coach)
  end

  def test_add_player
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal(['Novo', 'Prso', 'Goram'], team.add_player('Goram'))
  end

  def test_contains_player_true
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal(true,team.contains_player('Prso'))
  end

  def test_contains_player_false
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal(false,team.contains_player('Messi'))
  end

  def test_contains_new_player
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    team.add_player('Goram')
    assert_equal(['Novo', 'Prso', 'Goram'], team.players)
  end

  def test_add_points_win
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    team.add_points('win')
    assert_equal(3, team.points)
  end

  def test_add_points_lose
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    team.add_points('lose')
    assert_equal(0, team.points)
  end

  def test_add_points_draw
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    team.add_points('draw')
    assert_equal(1, team.points)
  end

end
