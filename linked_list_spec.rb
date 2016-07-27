require_relative 'linked_list'

describe LinkedList do

  let(:linked_list) { LinkedList.new }

  it 'can set first and last elements' do
    linked_list.insert_first("first")
    linked_list.insert_last("last")
    expect(linked_list.first.element).to eq("first")
    expect(linked_list.last.element).to eq("last")
    expect(linked_list.first.next.element).to eq("last")
    expect(linked_list.last.next).to eq(nil)
    expect(linked_list.size).to eq(2)
  end

end
