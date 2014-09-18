# Pay-Bills

I usually pay my bills around the same time every month. The process is pretty manual and I don't like to sign up for auto-bill pay for most services. This gem allows you to set a configuration file with the actions to open relevant web pages.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pay-bills'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pay-bills

## Usage

*NOTE* Gem is still under construction and probably very buggy.

1. Set configuration file:
    
    config.yml
    
    bill: credit-card
    action:
        browser: www.credit-card.com

2. From you command line
    
    pay-bills

For the above example, this will open a browser window with `www.credit-card.com` as the url.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pay-bills/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
