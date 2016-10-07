# starter-code/singly_linked_list.rb
require_relative './node.rb'

class SinglyLinkedList
  attr_reader :head

  def initialize(head=nil)
    if head.instance_of? Node
      @head = head
    elsif head.nil?
      @head = nil
    else
      @head = Node.new(head)
    end
  end

  def head=(new_head)
    if new_head.instance_of?(Node)
      @head = new_head
    elsif new_head.nil?
      @head = nil
    else
      raise ArgumentError, 'head must be a Node or nil'
    end
  end

  # TODO returns true if head instance variable is nil; false if not nil
  def empty?
  end

  def inspect
    if self.empty?
      return "nil (head)"
    end
    arr = ["#{@head.data} (head)"]
    current_node = @head.next
    until current_node.nil? do
      arr << "#{current_node.data}"
      current_node = current_node.next
    end
    arr << "nil"
    arr.join(' -> ')
  end

  # TODO - return the number of nodes in the list
  def length
  end

  def insert_at_start node_or_data
    new_node = node_or_data.instance_of?(Node) ? node_or_data : Node.new(node_or_data)
    new_node.next = @head
    @head = new_node
  end

  # TODO - add node (or new node crated from data) to end of list
  def append node_or_data
  end

  # alias of append
  def insert_at_end node_or_data
    self.append node_or_data
  end


  # TODO - remove the first node
  def remove_from_start
  end

  def remove_from_end
    return if @head.nil?
    if @head.next.nil?
      @head = nil
      return
    end
    previous_node = @head
    current_node = @head.next
    until current_node.next.nil? do
      previous_node = current_node
      current_node = current_node.next
    end
    previous_node.next = nil
  end

  def node_exists? node
    current_node = @head
    until current_node.nil? do
      return true if current_node == node
      current_node = current_node.next
    end
    false
  end

  # TODO - return true if there is a node in this list with the given data; false if not
  def data_exists? data
  end

  # TODO - find and delete the given node
  def delete node
  end

  # BONUS WITH SOLUTION - find and delete the first node with the given data
  def delete_with_data data
  end

  # TODO - find and return the middle node (in even length lists, return the left-middle)
  def middle_node
  end

end
