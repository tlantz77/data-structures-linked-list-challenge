require_relative 'linked_list'

describe LinkedList do

  let(:linked_list) { LinkedList.new }

  before(:each) do
    linked_list.insert_first("first")
    linked_list.insert_last("last")
  end

  it 'can get the size of the list' do
    expect(linked_list.size).to eq(2)
  end

  it 'can set first and last elements' do
    expect(linked_list.first.element).to eq("first")
    expect(linked_list.last.element).to eq("last")
    expect(linked_list.first.next.element).to eq("last")
    expect(linked_list.last.next).to eq(nil)
    expect(linked_list.size).to eq(2)
  end

  it 'can remove first element' do
    linked_list.remove_first
    expect(linked_list.first.element).to eq("last")
    expect(linked_list.size).to eq(1)
  end

  it 'can retrieve an element at a given index' do
    expect(linked_list.get(0)).to eq("first")
    expect(linked_list.get(1)).to eq("last")
  end

  it 'will throw error to trying to get element from index outside of bounds' do
    expect { linked_list.get(2) }.to raise_error(StandardError, 'Out of Bounds')
  end

  it 'can insert element at a given index' do
    linked_list.insert(1, "second")
    linked_list.insert(2, "third")
    expect(linked_list.size).to eq(4)
    expect(linked_list.get(0)).to eq("first")
    expect(linked_list.get(1)).to eq("second")
    expect(linked_list.get(2)).to eq("third")
    expect(linked_list.get(3)).to eq("last")
  end

end
