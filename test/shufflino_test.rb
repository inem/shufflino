require "test_helper"

class ShufflinoTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Shufflino::VERSION
  end

  def test_raises_on_empty_seeds
    assert_raises do
      Shufflino::Core.new([])
    end
  end

  # def test_accepts_strings
  #   seeds = ['fm8','Utq']
  #   shufflino = Shufflino::Core.new(seeds)

  #   assert { shufflino.generate(0) == "fU" }
  # end

  # def test_works_with_long_strings
  #   seeds = ['mhVvn8SwHFctIlyuQrMb1fBTJWoxG4k9RPA5']
  #   # seeds = ['mhVvn8SwHFctIlyuQrMb1fBTJWoxG4k9RPA53aKe0gOpXis6zjDUdYZCL7qE2N']
  #   shufflino = Shufflino::Core.new(seeds)

  #   assert { shufflino.generate(0) == "m" }
  #   assert { shufflino.generate(1) == "h" }
  #   assert { shufflino.generate(2) == "V" }
  # end

  # def test_works_with_very_long_strings
  #   seeds = ['mhVvn8SwHFctIlyuQrMb1fBTJWoxG4k9RPA53aKe0gOpXis6zjDUdYZCL7qE2N']
  #   shufflino = Shufflino::Core.new(seeds)

  #   assert { shufflino.generate(0) == "m" }
  #   assert { shufflino.generate(1) == "h" }
  #   assert { shufflino.generate(2) == "V" }
  # end

  def test_generates_stuff_correctly
    seeds = [[:f, :m, 8], [:U, :t, :q] ]
    shufflino = Shufflino::Core.new(seeds)

    # assert { shufflino.generate(0) == "fU" }
    # assert { shufflino.generate(1) == "ft" }
    # assert { shufflino.generate(2) == "fq" }
    # assert { shufflino.generate(3) == "mU" }
    assert { shufflino.generate(4) == "mt" }
    assert { shufflino.generate(5) == "mq" }
    assert { shufflino.generate(6) == "8U" }
    assert { shufflino.generate(7) == "8t" }
    assert { shufflino.generate(8) == "8q" }

    assert_raises do
      shufflino.generate(9)
    end

    seeds = [[:f, :m, :e, :W], [:U, :t, 3, :Q], [9, :S, :j, :w]]
    shufflino = Shufflino::Core.new(seeds)

    assert_raises do
      shufflino.generate(64)
    end

    assert { shufflino.generate(0) == "fU9" }
    assert { shufflino.generate(1) == "fUS" }
    assert { shufflino.generate(2) == "fUj" }
    assert { shufflino.generate(3) == "fUw" }
    assert { shufflino.generate(4) == "ft9" }
    assert { shufflino.generate(5) == "ftS" }
    assert { shufflino.generate(63) == "WQw" }
  end
end
