require 'rails_helper'

RSpec.describe Node, type: :model do
  it 'versions itself on save' do
    Node.create(external_id: "123", name: "first_node")
    Node.create(external_id: "123", name: "first_node")
  end
end
