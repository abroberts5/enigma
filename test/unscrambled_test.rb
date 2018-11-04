require_relative 'test_helper'

class UnScrambledTest < Minitest::Test
  def test_it_exists
    loosey = UnScrambled.new('12345678', 'phjywcuazob')
    assert_instance_of UnScrambled, loosey
  end

  def test_it_has_attributes
    loosey = UnScrambled.new('12345678', 'phjywcuazob')
    assert_equal '12345678', loosey.rotation
    assert_equal 'phjywcuazob', loosey.phrase
  end

  def test_it_takes_rotation_and_breaks_it_up_from_final_class
    loosey = UnScrambled.new('12345678', 'phjywcuazob')
    expected = ['78', '12', '34', '56']
    assert_equal expected, loosey.rotation_array
  end

  def test_it_can_shift_rotation_array
    loosey = UnScrambled.new('12345678', 'phjywcuazob')
    loosey.rotation_array
    expected = ['12', '34', '56', '78']
    assert_equal expected, loosey.unshift_it
    expected2 = ['34', '56', '78', '12']
    assert_equal expected2, loosey.unshift_it
    expected3 = ['56', '78', '12', '34']
    assert_equal expected3, loosey.unshift_it
  end

  def test_it_can_unscramble_phrase
    loosey = UnScrambled.new('03277320', 'keder ohulw')
    loosey.rotation_array
    assert_equal 'hello world', loosey.loose_eggs
  end
end
