# A2pcej
[![Code Climate](https://codeclimate.com/github/kacchan822/a2pcej-ruby/badges/gpa.svg)](https://codeclimate.com/github/kacchan822/a2pcej-ruby)
[![Issue Count](https://codeclimate.com/github/kacchan822/a2pcej-ruby/badges/issue_count.svg)](https://codeclimate.com/github/kacchan822/a2pcej-ruby)
[![Coverage Status](https://coveralls.io/repos/github/kacchan822/a2pcej-ruby/badge.svg?branch=master)](https://coveralls.io/github/kacchan822/a2pcej-ruby?branch=master)


This gem convert each alphabet letters to phonetic code, and also convert each alphabet letterts to katakana.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'a2pcej'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install a2pcej

## Usage

`A2pcej.conv_al` converts alphabetic characters into English phonetic code, and `A2pcej.conv_ak` converts them into Japanese katakana phonetic code.

### Method signatures

```ruby
A2pcej.conv_al(letters, delimiter: '-', sign: '(CAPS)', num: false)
A2pcej.conv_ak(letters, delimiter: '・', sign: '（大文字）', num: false)
```

`letters` must be a string.

### Basic examples

First, require the gem:

```ruby
require 'a2pcej'
```

Convert `examples` to English phonetic code:

```ruby
A2pcej.conv_al('examples')
# => "Echo-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra"
```

Convert `examples` to Japanese katakana phonetic code:

```ruby
A2pcej.conv_ak('examples')
# => "イー・エクス・エイ・エム・ピー・エル・イー・エス"
```

Non-alphabet characters are left unchanged by default. Uppercase letters are marked with the default sign.

```ruby
A2pcej.conv_al('Examples002')
# => "Echo(CAPS)-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra-0-0-2"

A2pcej.conv_ak('Examples002')
# => "イー（大文字）・エクス・エイ・エム・ピー・エル・イー・エス・0・0・2"
```

You can change the delimiter and the uppercase sign.

```ruby
A2pcej.conv_al('Examples003', delimiter: ', ', sign: '(CAPITAL)')
# => "Echo(CAPITAL), Xray, Alfa, Mike, Papa, Lima, Echo, Sierra, 0, 0, 3"

A2pcej.conv_ak('Examples003', delimiter: '／', sign: '(大)')
# => "イー(大)／エクス／エイ／エム／ピー／エル／イー／エス／0／0／3"
```

If you want to convert numbers to phonetic code, set `num: true`.

```ruby
A2pcej.conv_al('Examples004', num: true)
# => "Echo(CAPS)-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra-zero-zero-four"

A2pcej.conv_ak('Examples004', num: true)
# => "イー（大文字）・エクス・エイ・エム・ピー・エル・イー・エス・ゼロ・ゼロ・ヨン"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kacchan822/a2pcej-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the A2pcej project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kacchan822/a2pcej-ruby/blob/master/CODE_OF_CONDUCT.md).
