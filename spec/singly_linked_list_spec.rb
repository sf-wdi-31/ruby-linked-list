# require_relative '../models/singly_linked_list'
require_relative '../solutions/singly_linked_list'

describe SinglyLinkedList do

  describe '#initialize' do
    let!(:node) { Node.new('node') }
    it 'takes an argument (for the head attribute)' do
        expect(SinglyLinkedList).to respond_to(:new).with(1).argument # TODO passing early
    end

    it 'sets the head instance variable to the argument if it is a Node or nil' do
      expect(SinglyLinkedList.new(node)).to be_a SinglyLinkedList
      expect(SinglyLinkedList.new(nil)).to be_a SinglyLinkedList
    end
    it 'raises an ArgumentError if the argument is not a Node or nil' do
      expect{SinglyLinkedList.new(14)}.to raise_error ArgumentError
    end
    it 'sets the head to nil if no head is provided' do
      expect(SinglyLinkedList.new.head).to be_nil
    end
  end
  #
  # describe 'head attribute' do
  #   it 'allows getting and setting a head' do
  #   end
  #
  #   it 'validates that the head is a Node or nil' do
  #   end
  # end
  #
  # describe 'tail attribute (bonus)' do
  #   it 'allows getting and setting a tail' do
  #   end
  #
  #   it 'validates that the tail is a Node or nil' do
  #   end
  # end
  #
  # describe '#append' do
  #   # takes in data for a new node (or an entire new node?)
  #   # appends either to the list
  #   # sets a new tail for the list
  #   # if the list was empty, sets a new head for the list
  #   it 'takes in data for the new node' do
  #
  #   end
  #   it 'increases the length of the list' do
  #
  #   end
  #   it 'sets the newly added node as the tail of the list' do
  #
  #   end
  #   context 'when list is empty' do
  #     it 'sets the newly added node as the head of the list' do
  #     end
  #   end
  # end
  #
  # describe '#inspect' do
  #   # format data1.inspect (Head) -> data2.inspect -> data3.inspect
  #   it 'returns a human-readable string version of the list' do
  #   end
  #   it 'includes all nodes in the list' do
  #   end
  #   it 'uses each node\'s inspect method' do
  #   end
  #   it 'handles empty lists' do
  #   end
  # end
  #
  # describe '#prepend' do
  #   it 'increases the length of the list by 1' do
  #
  #   end
  #   it 'takes in data for the new node' do
  #
  #   end
  #   it 'creates a new node with the given data' do
  #
  #   end
  #   it 'adds the new node at the beginning of the list' do
  #
  #   end
  #   it 'sets the head of the linked list to be the new node' do
  #
  #   end
  #   context 'when list is empty' do
  #     it 'sets the tail of the list to be the new node' do
  #
  #     end
  #   end
  # end
  #
  # describe '#empty?' do
  #   it 'returns true if the head of the list is nil' do
  #
  #   end
  #   it 'returns false if the list has nodes in it' do
  #
  #   end
  # end
  #
  # describe '#length' do
  #   it 'returns the number of nodes in the list' do
  #
  #   end
  #   it 'returns 0 for an empty list' do
  #
  #   end
  # end
  #
  # describe '#includes?' do
  #   it 'takes in some data' do
  #
  #   end
  #   it 'returns true if the list has a node with that data' do
  #
  #   end
  #   it 'returns false if the last does not have a node with that data' do
  #
  #   end
  # end
  #
  # describe '#delete' do
  #   it 'takes in some data' do
  #
  #   end
  #   it 'removes one node' do
  #
  #   end
  #   it 'removes the *first* node with that data' do
  #
  #   end
  # end
  #
  # describe '#insert_as_nth' do
  #   it 'takes in some data and a number (n)' do
  #
  #   end
  #   it 'creates a new node with the data' do
  #
  #   end
  #   it 'inserts the node as the nth item in the linked list' do
  #
  #   end
  # end
  #
  # describe '#middle_node' do
  #   it 'returns the node in the middle of the list' do
  #   end
  #   it 'returns the node to left of middle node in even-length lists' do
  #
  #   end
  #   it 'returns nil for empty lists' do
  #
  #   end
  # end

end
