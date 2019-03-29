class TreasureRoom
  def initialize(room, name, index)
    @room = room
    @name = name
    @index = index
  end
end

class TreasureRoomList
  def initialize
    @treasures = Array.new
  end

  def append(treasure)
    @treasures.push(treasure)
    self
  end

  def delete_first
    @treasures.shift
  end

  def delete_last
    @treasures.pop
  end

  def [](index)
    @treasures[index]
  end
end

# Require for test
require 'test/unit'

class TestTreasure < Test::Unit::TestCase
  def test_delete
    list = TreasureRoomList.new
    s1 = TreasureRoom.new('room1', 'The treasure Room', 1)
    s2 = TreasureRoom.new('room2', 'The Throne Room', 2)
    list.append(s1).append(s2)
    assert_nil(list[4])
    assert_equal(s1, list[0])
    assert_equal(s2, list[1])
    assert_equal(s1, list.delete_first)
    assert_equal(s2, list.delete_last)
  end
end
