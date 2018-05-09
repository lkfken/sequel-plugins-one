# Sequel::Plugins::One

This Sequel plugin added a dataset method <i>#one</i> which return 1 row if the dataset contains exactly 1 row; raise an exception otherwise.

## Installation

Add this line to your application's Gemfile:

```ruby
# frozen_string_literal: true
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
gem 'sequel-plugins-one', github: 'lkfken/sequel-plugins-one'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sequel-plugins-one

## Usage
```ruby
class Item < Sequel::Model
  plugin :one
end
```
```ruby
Item.where(:id => 1).one <comment>
```
`return record:1`
```ruby
Item.where(:id => [1,2]).one
```
`exception NotOneRow raised`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sequel-plugins-one. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

