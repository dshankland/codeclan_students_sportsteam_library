require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TeamTest < MiniTest::Test

  def test_get_teamname
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal('Rangers', team.get_teamname())
  end

  def test_get_players
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal(['Novo', 'Prso'], team.get_players())
  end

  def test_get_coach
    team = Team.new('Rangers', ['Novo', 'Prso'], 'StevieG')
    assert_equal('StevieG', team.get_coach())
  end

end
