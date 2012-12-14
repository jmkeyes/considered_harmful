# ConsideredHarmful

Adds support for a limited `goto` to Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'considered_harmful'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install considered_harmful

## Usage

    #!/usr/bin/env ruby

    require 'considered_harmful'

    __label__(:orly)
    puts "There's a goto in mah ruby."
    __goto__(:orly)

## Contributing

Patches welcome.
