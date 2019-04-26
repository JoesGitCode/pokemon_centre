require('minitest/autorun')
require('minitest/rg')
require_relative('../models/pokemon.rb')

class PokemonTest < MiniTest::Test

  def setup
    @pokemon1 = Pokemon.new({'name' => 'steve', 'date_caught' => 100})
  end

  def test_a_pokemon_has_a__name
    assert_equal("steve", @pokemon1.name)
  end

  def test_a_pokemon_has_a__date_caught
    assert_equal(100, @pokemon1.date_caught)
  end
end
