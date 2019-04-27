require('minitest/autorun')
require('minitest/rg')
require_relative('../models/vet.rb')

class VetTest < MiniTest::Test

  def setup
    @vet1 = Vet.new({'name' => 'joy'})
  end

  def test_a_vet_has_a__name
    assert_equal("joy", @vet1.name)
  end
end
