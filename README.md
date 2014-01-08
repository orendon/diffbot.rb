# Diffbot.rb [![Build Status](https://travis-ci.org/orendon/diffbot.rb.png?branch=master)](https://travis-ci.org/orendon/diffbot.rb)

Ruby wraper for the Diffbot API, follows Ruby conventions and idioms

## Installation

Add this line to your application's Gemfile:

    gem 'diffbot_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diffbot_api

## Usage

You can provide your authentication token globally

```ruby
Diffbot.configure do |c|
  c.token = ENV['DIFFBOT_TOKEN']
end
```

## Contributing

1. Fork it ( http://github.com/orendon/diffbot.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
