require_relative "node"

class LinkedList
  attr_reader :head

  def initialize(data)
    @head = Node.new(data)
  end

  def push(data)
    current = @head

    until current.link == nil
      current = current.link
    end

    current.link = Node.new(data)
  end

  def last_node
    current = @head

    until current.link == nil
      current = current.link
    end

    current
  end
end
