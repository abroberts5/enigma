require_relative 'test_helper'

class UnScrambledTest < Minitest::Test
  def test_it_exists
    loosey = UnScrambled.new('12345678', 'poiurunfksr')
    assert_instance_of UnScrambled, loosey
  end

  def test_it_has_attributes
    loosey = UnScrambled.new('12345678', 'poiurunfksr')
    assert_equal '12345678', loosey.rotation
    assert_equal 'poiurunfksr', loosey.phrase
  end

  def test_it_takes_rotation_and_breaks_it_up_from_final_class
    loosey = UnScrambled.new('12345678', 'poiurunfksr')
    expected = ['12', '34', '56', '78']
    assert_equal expected, loosey.rotation_array
  end

  def test_it_can_shift_rotation_array
    loosey = UnScrambled.new('12345678', 'poiurunfksr')
    loosey.rotation_array
    expected = ['34', '56', '78', '12']
    assert_equal expected, loosey.shift_it
    expected2 = ['56', '78', '12', '34']
    assert_equal expected2, loosey.shift_it
    expected3 = ['78', '12', '34','56']
    assert_equal expected3, loosey.shift_it
  end
end
