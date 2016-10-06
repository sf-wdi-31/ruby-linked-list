# solutions/singly_linked_list.rb

require_relative './node.rb'

class SinglyLinkedList
  attr_reader :head
  def initialize(head=nil)
    if head.is_a? Node
      @head = head
    elsif head.nil?
      @head = nil
    else
      @head = Node.new(head)
    end
  end

  def head=(new_head)
    if new_head.is_a?(Node)
      @head = new_head
    elsif new_head.nil?
      @head = nil
    else
      raise ArgumentError, 'head must be a Node or nil'
    end
  end

  def empty?
    @head.nil?
  end

  def append node_or_data
    
  end
end
