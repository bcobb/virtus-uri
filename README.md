# Virtus URI

Provides a URI attribute for Virtus.

## Getting Started

1. Add to your Gemfile

  ```ruby
  gem 'virtus-uri', require: false
  ```

2. Require it when you'd like to work with URIs:

  ```ruby
    require 'virtus'
    require 'virtus/uri'

    class Request
      include Virtus

      attribute :url, URI
    end
  ```

3. Work with URIs:

  ```ruby
  Request.new(url: 'http://example.com').url == URI('http://example.com')
  ```

## License

MIT
