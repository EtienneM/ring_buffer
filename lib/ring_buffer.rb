require 'ring_buffer/version'

class RingBuffer < Array
  attr_reader :max_size

  alias :push :<<

  def initialize(max_size)
    raise 'max_size must be an integer' if !max_size.is_a? Integer
    raise 'max_size must be positive' if max_size < 0

    @max_size = max_size
  end

  def <<(element)
    super if self.size < @max_size

    self.shift
    self.push element
  end
end
