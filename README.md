# ChefUtensils

This gem contains boilerplate code to put common Rake taks that are
associated with Chef cookbook projects. The goal is to make it easy to
add these rake tasks to your cookbooks' `Rakefile` without copy-pasting
a bunch of boilerplate code around.

The name is attempting to deliver yet another cooking pun.

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'chef_utensils'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install chef_utensils

## Usage

Add the tasks to your `Rakefile` with the following:

```
require 'chef_utensils/tasks'
```

That's it. After that, you can look at all the tasks that were added via rake's `-T` option.

    $ bundle exec rake -T
    rake chef:foodcritic              # Run foodcritic
    rake foodcritic                   # Easier to type alias for chef:foodcritic
    rake kitchen                      # Easier to type alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-ubuntu-1404  # Run default-ubuntu-1404 test instance
    rake lint                         # Run linting tools
    rake rspec                        # Run RSpec code examples
    rake rubocop                      # Run RuboCop
    rake rubocop:auto_correct         # Auto-correct RuboCop offenses
    rake spec                         # Easier to type alias for rspec
