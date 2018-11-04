require_relative 'test_helper'
require './lib/key'
require './lib/offset'
require './lib/final_rotation'

class FinalRotationTest < Minitest::Test
  def setup
    @final = FinalRotation.new({key: Key.new,
                                offset: Offset.new})
  end

  def test_it_exists
    assert_instance_of FinalRotation, @final
  end

  def test_it_can_create_new_instance_of_offset_and_key
    assert_instance_of Key, @final.key
    assert_instance_of Offset, @final.offset
  end

  def test_it_can_create_final_rotation_a_b_c_d
    assert_equal 2, @final.first_rotation.to_s.length
    assert_equal 2, @final.second_rotation.to_s.length
    assert_equal 2, @final.third_rotation.to_s.length
    assert_equal 2, @final.forth_rotation.to_s.length
  end

  def test_it_can_give_full_final_rotation
    assert_equal 8, @final.full_final.length
  end
end
