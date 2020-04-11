require_relative "shufflino/version"
require_relative "shufflino/helpers"

require 'bases'

module Shufflino
  class Error < StandardError; end

  class Core
    def initialize(seeds)
      if seeds.first.is_a? Array
        @seeds = seeds
      elsif seeds.first.is_a? String
        @seeds = seeds.map {|s| s.split("") }
      end

      raise "Empty seeds array" if seeds.empty?

    end

    def generate(id)
      id = id.to_i
      raise Shufflino::Error.new 'Not enough seeds!' if id > combinations_size - 1

      indices = Bases[id.to_s].in_base(10).to_base(alphabet_size, array: true).map(&:to_i)

      indices = Array.new(id_length - indices.size, 0) + indices # rjust

      result = ""

      indices.each_with_index do |index, i|
        alphabet = @seeds[i]
        result << alphabet[index].to_s
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
