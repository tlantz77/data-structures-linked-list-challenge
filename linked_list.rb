require_relative 'node'

class LinkedList

  attr_reader :size, :first, :last

  def initialize
    @size = 0
    @first = nil
    @last = nil
  end

  def get_node(index)
    node = @first
    index.times do
      node = node.next
    end
    node
  end

  def get(index)
    get_node(index).element
  end

  def insert_first(element)
    new_node = Node.new(element)
    @first = new_node
    @last = new_node if @last == nil
    @size += 1
  end

  def remove_first
    return nil if @first ==  nil
    @first = @first.next
    @size -= 1
  end

  def insert_last(element)
    new_node = Node.new(element)
    @last = new_node
    @first = new_node if @first == nil
    @size += 1
    @first.next = @last if @size == 2
  end

  def remove_last
    return nil if @last == nil
    @size -= 1
    @last = get_node(@size - 1)
    @last.next = nil
  end

end
