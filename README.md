# EnglishNumbers

This plugin will take number as a input and will convert it to verbal text. 

## Project Setup for Development(MAC)

Check if bundle is installed or not

```
    bundle -v
```

if not installed then use following command to install it:

```
    gem install bundler
```

Clone the repo using following command: 

```
    git clone https://github.com/rakib32/EnglishNumbers.git
```

Go to repo directory and run following command to install dependencies:

```
    cd EnglishNumbers
    sudo bundle install
```

## Test the plugin

Use following command to run the tests:

```
    rake spec
```

Use following command to enter the console:

```
    bin/console 
```

Then test by inserting:

```
    EnglishNumber.new(73).in_english
```

I have also added single plugin file. If you want you can also test that file as well:

```
    ruby EnglishNumber.rb
```

## Installation (to use it in different project)

Add this line to your application's Gemfile:

```ruby
gem 'EnglishNumbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install EnglishNumbers

## Usage

```
    EnglishNumber.new(73).in_english   seventy three 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rakib32/EnglishNumbers.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
