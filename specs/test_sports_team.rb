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

end
