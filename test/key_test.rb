require_relative 'test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_it_can_return_5_digits
    key = Key.new
    assert_equal 5, key.num.length
  end

  def test_rotations_return_2_digits_in_string
    key = Key.new
    assert_instance_of Integer, key.a_rotation
    assert_instance_of Integer, key.b_rotation
    assert_instance_of Integer, key.c_rotation
    assert_instance_of Integer, key.d_rotation
  end
end
