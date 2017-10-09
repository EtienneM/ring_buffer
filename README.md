# ring_buffer

ring_buffer provides a simple ring buffer implementation in Ruby. A ring buffer
is a queue with a maximum capacity. When the capacity exceeds, the first
element inserted is removed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ring_buffer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ring_buffer

## Usage

```ruby
buffer = RingBuffer.new 2
buffer << 'first element'
buffer << 'second element'
buffer << 'third element'
p buffer
# ['second element', 'third element']
```

## Development

After checking out the repository, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

### Without installing Ruby globally

On my work station, I prefer to use a Docker image with Ruby installed instead
of installing Ruby locally. Hence, any `bundle …` command can be prefixed with
`docker-compose run ring-buffer`. For instance, running the tests is done with
the command `docker-compose run ring-buffer bundle exec rake spec`.

## Acknowledgment

This gem is a generalization of the wonderful work from
[Nimster](https://github.com/Nimster/) and its
[`ringbuffer`](https://gist.github.com/Nimster/4078106#file-ringbuffer-rb)
gist.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/EtienneM/proc_parser.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).
