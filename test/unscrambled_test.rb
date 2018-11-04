require_relative 'test_helper'

class UnScrambledTest < Minitest::Test
  def test_it_exists
    loosey = UnScrambled.new('12345678', 'poiurunfksr')
    assert_instance_of UnScrambled, loosey
  end

  def test_it_has_attributes
    scrambled = UnScrambled.new('12345678', 'poiurunfksr')
    assert_equal '12345678', scrambled.rotation
    assert_equal 'poiurunfksr', scrambled.phrase
  end
end
