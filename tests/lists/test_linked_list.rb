require 'minitest/autorun'
require 'minitest/pride'

require './lib/lists/linked_list'

class TestLinkedList < Minitest::Test
  def test_add_node_to_empty_list
    @list = Cameron::LinkedList.new
    @list.append(5)

    assert @list.size == 1
    assert @list.head.value == 5
  end

  def test_add_node_to_existing_list
    @list = Cameron::LinkedList.new

    @list.append(0)
    @list.append(5)

    assert @list.size == 2
    assert @list.head.value == 0
    refute @list.head.next.nil?
    assert @list.head.next.value == 5
  end

  def test_get_node_from_list
    @list = Cameron::LinkedList.new

    @list.append(0)
    @list.append(5)
    @list.append(7)

    assert @list.get(0) == 0
    assert @list.get(1) == 5
    assert @list.get(2) == 7
  end
end
