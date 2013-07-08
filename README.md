# MinaExtensions

Set of mina extension tasks

## Passenger

```ruby
require 'mina_extensions/passenger'
invoke :'passenger:restart'
```

## Sidekiq
Tasks for managing Sidekiq workers.

```ruby
require 'mina_extensions/sidekiq'
invoke :'sidekiq:quiet'
invoke :'sidekiq:stop'
invoke :'sidekiq:start'
invoke :'sidekiq:restart'
```
If you are using rvm, you need to invoke `rvm:use` before. That's how I do it:
```ruby
task :enviroment do
  invoke :'rvm:use[ruby-1.9.3@mygemset]'
end

task :deploy => :environment do
	#lots of stuff here
	invoke :'sidekiq:restart'
end
```

Credits to @Mic92 https://github.com/Mic92/mina
## Resque
## Rapns

## Installation

Add this line to your application's Gemfile:

    gem 'mina_extensions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mina_extensions

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
