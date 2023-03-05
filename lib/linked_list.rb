require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    length = 0
    node = head
    until node.nil?
      node = node.next_node
      length += 1
    end
    return nil if n < 1 || n > length
    node = head
    index = 1
    while index < length - n + 1
      node = node.next_node
      index += 1
    end
    return node.value
  end

end
