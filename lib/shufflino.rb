require_relative "shufflino/version"
require_relative "shufflino/helpers"

module Shufflino
  class Error < StandardError; end

  class Core
    def initialize(seeds)
      @seeds = seeds

      raise "Empty seeds array" if seeds.empty?

    end

    def generate(id)
      id = id.to_i
      raise Shufflino::Error.new 'Not enough seeds!' if id > combinations_size - 1

      indices = id.to_s(alphabet_size).rjust(id_length, "0").split("")
      result = ""

      indices.each_with_index do |index, i|
        alphabet = @seeds[i]
        result << alphabet[index.to_i].to_s
      end

      result
    end

    def combinations_size
      alphabet_size ** id_length
    end

    def alphabet_size
      @seeds.first.size
    end

    def id_length
      @seeds.size
    end
  end
end
