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
    return super(element) if size < @max_size

    # If the RingBuffer is full, remove the first element and add the new at the end.
    shift
    push element
  end
end
