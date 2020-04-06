# Puffly

[![Gem Version](https://badge.fury.io/rb/puffly.svg)](https://badge.fury.io/rb/puffly)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/bbf2d676a27842eab590d8dac0cda3ca)](https://www.codacy.com/app/Kevyder/puffly?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=kevyder/puffly&amp;utm_campaign=Badge_Grade)
[![Build Status](https://travis-ci.org/kevyder/puffly.svg?branch=master)](https://travis-ci.org/kevyder/puffly)


Fun and cute flash messages for your Ruby on Rails application.

#### Live demo: https://goo.gl/K4XQQU

## Installation

Add this line to your application's Gemfile:

  ```ruby
  gem 'puffly'
  ```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install puffly

Once installed, add the following to your `application.scss`:

  ```scss
  @import "puffly";
  ```

and your `application.js`:

  ```js
  //= require puffly
  ```

## Usage

Add this lines to your `application.erb` or the main layout of your application:

  ```erb
  <% flash.each do |type, msg| %>
    <%= content_tag :span, msg, class: "#{type}", id: "puffly" %>
  <% end %>
  ```

And add the flash message to the action of your controller:

   ```ruby
   flash[OPTION] = "Your message"
   ```

You can set some options when creating a flash message.

####`flash[OPTION]`

   OPTION | SASS Variable | HEX Color
   ------------ | ------------- | -------------
   :success | $color-sucess | `#3DC763`
   :error | $color-error | `#ED3D3D`
   :warning | $color-warning | `#FF9800`
   :notice | $color-notice | `#2B5C7F`
   :alert  | $color-alert  | `#03A9F4`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kevyder/puffly.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
