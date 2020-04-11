require "test_helper"

class ShufflinoHelpersTest < Minitest::Test

  def test_factorial
    assert Shufflino::Helpers.factorial(0), 1
    assert Shufflino::Helpers.factorial(1), 1
    assert Shufflino::Helpers.factorial(2), 2
    assert Shufflino::Helpers.factorial(3), 6
    assert Shufflino::Helpers.factorial(4), 34
  end
end
