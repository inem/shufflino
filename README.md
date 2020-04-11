# Shufflino

Generates random-looking like strings from shuffled seed arrays

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shufflino'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shufflino

## Usage

```
seeds = [[:f, :m, :e, :W], [:U, :t, 3, :Q], [9, :S, :j, :w]]
shufflino = Shufflino::Core.new(seeds)
shufflino.generate(0) # =>"fU9"
shufflino.generate(63) # => "WQw"
shufflino.generate(64) # Raises error (Not enough seeds)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/inem/shufflino. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
