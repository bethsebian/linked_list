require_relative 'node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def test_node_can_hold_data
    node = Node.new("comcast sucks")
    expected = "comcast sucks"

    assert_equal expected, node.data
  end

  def test_node_starts_with_no_link
    node = Node.new("comcast sucks")
    expected = nil

    assert_equal expected, node.link    
  end
end
