module Shufflino
  class Helpers
    def self.factorial(num)
      return 1 if num < 1

      num * factorial(num - 1)
    end

    # def self.radix(alphabet, )
  end
end
