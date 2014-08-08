# InjectiveMap

Like a hash, but performs the mappings both ways.

## Installation

Add this line to your application's Gemfile:

    gem 'injective_map'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install injective_map

## Usage

```ruby
map = InjectiveMap.new

map.add(:jill, :jack)
map.add(:marilyn, :joe)
map.add(:melinda, :bill)

map.forward(:jill) # :jack
map.reverse(:joe) # :marilyn
map.forward_image([:jill, :melinda]) # [:jack, :bill]
map.reverse_image([:bill, :jack]) # [:melinda, :jill]
```

It also includes the `Enumerable` module, and yields `[:from, :to]` pairs, eg `[:jill, :jack]`

## TODO

* Add tests.

## Contributing

1. Fork it ( https://github.com/cameron-martin/injective_map/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
