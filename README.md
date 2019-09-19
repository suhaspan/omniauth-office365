# Omniauth::Office365 

[![Gem Version](https://badge.fury.io/rb/omniauth-office365.svg)](https://badge.fury.io/rb/omniauth-office365)
[![Build Status](https://travis-ci.org/simi/omniauth-office365.svg?branch=master)](https://travis-ci.org/simi/omniauth-office365)
[![Code Climate](https://codeclimate.com/github/suhaspan/omniauth-office365/badges/gpa.svg)](https://codeclimate.com/github/suhaspan/omniauth-office365)

Microsoft Office365 v2.0 OmniAuth OAuth2 Strategy - https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-office365'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-office365

## Usage

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :office365, ENV['OFFICE365_KEY'], ENV['OFFICE365_SECRET']
end
```

## Reference Links
Microsoft Office365 v2.0 - https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow

Scopes and Resource - https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-permissions-and-consent


## Contributing

Bug reports and pull requests are welcome.

1. Fork it
2. Create your feature branch (`git checkout -b new-feature`)
3. Commit your changes along with test cases (`git commit -m 'Add feature'`)
4. If possible squash your commits to one commit if they all belong to same feature.
5. Push to the branch (`git push origin new-feature`)
6. Create new Pull Request.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
