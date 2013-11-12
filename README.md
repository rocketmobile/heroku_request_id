# HerokuRequestId

Heroku will add a unique request ID to every request if you enable the feature:

`heroku labs:enable http-request-id`

Heroku stores the ID in their own HTTP header named `Heroku-Request-ID`. Rails also supports the idea of a request ID, but it uses an `X-Request-ID` header instead.

This middleware jumps in the stack as early as it can and inserts Heroku's request ID as `X-Request-ID` if it exists. That's all.

## Installation

Add this line to your application's Gemfile:

    gem 'heroku_request_id'

## Usage

The most practical way to use this would be to add `uuid` to Rails's TaggedLogger:

```ruby
# config/environments/development.rb
config.log_tags = [:uuid]
```

This will allow you to correlate app log lines with Heroku router lines.

Keep in mind the middleware is inserted as early as possible into the stack; this means you can use it in other middlewares as well.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
