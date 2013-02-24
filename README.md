# Peerindex

Provides an interface to the four main endpoints of PeerIndex REST API.

## Installation

Add this line to your application's Gemfile:

    gem 'peerindex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peerindex

## Usage

Pass a valid PeerIndex API key to the constructor of the PeerIndex class.

```ruby
screenName = 'peerindex'

PeerIndex.new("f183qza9k88mjynhtjfc56ce")

resp = PeerIndex.actorBasic(:twitter_screen_name => screenName)

puts "Twitter user '#{screenName}' has a PeerIndex score of #{resp["peerindex"]}"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
