require_relative "linked_list"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < Minitest::Test
  def test_a_list_is_created_with_a_node
    list = LinkedList.new("Notorious RBG")
    expected = Node

    assert_equal expected, list.head.class
    assert_equal "Notorious RBG", list.head.data
  end

  def test_able_to_push_data_to_linked_list
    list = LinkedList.new("Notorious RBG")
    node_2_data = "internet access is a civil/human right"
    list.push(node_2_data)

    assert_equal node_2_data, list.head.link.data
  end

  def test_able_to_push_more_data_to_linked_list
    list = LinkedList.new("Notorious RBG")
    node_2_data = "internet access is a civil right"
    node_3_data = "internet access is a human right"
    list.push(node_2_data)
    list.push(node_3_data)

    assert_equal node_3_data, list.head.link.link.data
  end

  def test_able_to_find_last_node
    list = LinkedList.new("Notorious RBG")
    node_2_data = "internet access is a civil right"
    node_3_data = "internet access is a human right"
    list.push(node_2_data)
    list.push(node_3_data)

    assert_equal node_3_data, list.last_node.data
  end
end
