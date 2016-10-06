# require_relative '../models/singly_linked_list'
require_relative '../solutions/singly_linked_list'

describe SinglyLinkedList do

  describe '::new' do
    let!(:node) { Node.new('node') }
    it 'takes an argument (for the head attribute)' do
        expect(SinglyLinkedList).to respond_to(:new).with(1).argument # TODO passing early
    end
    context 'when argument for head is a Node' do
      subject(:node_head_list) { SinglyLinkedList.new(node) }
      it 'sets the head instance variable to the argument' do
        expect(node_head_list).to be_a SinglyLinkedList
        expect(node_head_list.head).to eq node
      end
    end
    context 'when argument for head is nil' do
      subject(:nil_head_list) { SinglyLinkedList.new(nil) }
      it 'sets the head instance variable to the argument' do
        expect(nil_head_list).to be_a SinglyLinkedList
        expect(nil_head_list.head).to be_nil
      end
    end
    context 'when argument for head is not a Node or nil' do
      subject(:list) { SinglyLinkedList.new(14) }
      it 'creates a new node for the head with the argument as data' do
        expect(list).to be_a SinglyLinkedList
        expect(list.head).to be_a Node
        expect(list.head.data).to eq 14
      end
    end
    it 'sets the head to nil if no head is provided' do
      expect(SinglyLinkedList.new.head).to be_nil
    end
  end

  describe '#head' do
    let!(:node) { Node.new 'some data' }
    subject(:list) { SinglyLinkedList.new node }
    it 'allows getting a head' do
      expect(list).to respond_to(:head)
      expect(list.head).to be_a(Node)
      expect(list.head).to eq(node)
    end
  end
  describe '#head=' do
    let!(:node) { Node.new 123 }
    let!(:other_node) { Node.new 456 }
    subject(:list) { SinglyLinkedList.new node }
    it 'allows setting head to nil' do
      expect{ list.head=nil }.to change{ list.head }.from(node).to(nil)
    end
    it 'allows setting head to a node' do
      expect{ list.head=other_node }.to change { list.head }.to(other_node)
    end
    it 'raises an ArugmentErorr if the head is set to anyting other than nil or a node' do
      expect{ list.head=7 }.to raise_error ArgumentError
    end
  end


  describe '#empty?' do
    context 'when head of the list is nil' do
      subject(:list) { SinglyLinkedList.new(nil) }
      it 'returns true' do
        expect(list.empty?).to be true
      end
    end
    context 'when head of the list is not nil' do
      let(:node) { Node.new(1) }
      subject(:list) { SinglyLinkedList.new(node) }
      it 'returns false' do
        expect(list.empty?).to be false
      end
    end
  end

  # describe 'tail attribute (bonus)' do
  #   it 'allows getting and setting a tail' do
  #   end
  #
  #   it 'validates that the tail is a Node or nil' do
  #   end
  # end

  describe '#length' do
    it 'returns the number of nodes in the list' do

    end
    it 'returns 0 for an empty list' do

    end
  end

  # describe '#append' do
  #   let(:node_a) { Node.new 'a' }
  #   let(:node_b) { Node.new 'b' }
  #   subject(:list) { SinglyLinkedList.new node_a }
  #   # takes in data for a new node
  #   # appends either to the list
  #   # sets a new tail for the list (bonus)
  #   # if the list was empty, sets a new head for the list
  #   it 'takes in data for the new node' do
  #     expect(list).to respond_to(:append).with(1).argument # TODO passing early
  #   end
  #   it 'increases the length of the list' do
  #     expect{ list.append(7) }.to change{ list.length }.from(1).to(2)
  #     expect{ list.append(node_b) }.to change{ list.length }.from(2).to(3)
  #   end
  #   #  it 'sets the newly added node as the tail of the list' do
  #   #  #  bonus
  #   #  end
  #   context 'when list is empty' do
  #     let(:node) { Node.new 'b' }
  #     subject(:list) { SinglyLinkedList.new nil }
  #     it 'sets the newly added node as the head of the list' do
  #       expect{ list.append node }.to change{ list.head }.from(nil).to(node)
  #     end
  #   end
  # end

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
