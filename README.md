# ICanHazDadJoke

Welcome to the `icanhazdadjoke` gem! This Ruby gem provides a simple interface to fetch jokes from the icanhazdadjoke API, which is a service for getting random dad jokes.

```bash
$ icanhazdadjoke | cowsay
 ________________________________________
/ I remember when I was a kid, I opened  \
| my fridge and noticed one of my        |
| vegetables were crying. I guess I have |
\ some emotional cabbage.                /
 ----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icanhazdadjoke'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install icanhazdadjoke

## Usage

### Require the gem in your code

Using the `icanhazdadjoke` gem is quite straightforward. Here's a quick example:

```ruby
require 'icanhazdadjoke'

# Fetch a random dad joke
joke = ICanHazDadJoke.fetch_joke
puts joke
```

### Use the command line tool

You can also use the command line tool to fetch a random dad joke. Here's how:

```bash
$ icanhazdadjoke
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webmatze/icanhazdadjoke. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/webmatze/icanhazdadjoke/blob/main/CODE-OF-CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ICanHazDadJoke project's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the [code of conduct](https://github.com/webmatze/icanhazdadjoke/blob/main/CODE-OF-CONDUCT.md).
