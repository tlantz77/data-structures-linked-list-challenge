require_relative 'node'

describe Node do

  let(:new_node) { Node.new('thing') }
  let(:other_node) { Node.new('linked_thing') }

  it 'can initialize a new Node with a given element' do
    expect(new_node.element).to eq('thing')
  end

  it 'can link to another node' do
    new_node.insert_after(other_node)
    expect(new_node.next).to eq(other_node)
  end

  it 'can clear the linked node' do
    new_node.remove_after
    expect(new_node.next).to eq(nil)
  end

end
