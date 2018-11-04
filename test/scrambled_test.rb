require_relative 'test_helper'

class ScrambledTest < Minitest::Test

  def test_it_exists
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    assert_instance_of Scrambled, scrambled_eggs
  end

  def test_it_has_attributes
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    assert_equal '12345678', scrambled_eggs.rotation
    assert_equal 'hello world', scrambled_eggs.phrase
  end

  def test_it_takes_rotation_and_breaks_it_up_from_final_class
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    expected = ['12', '34', '56', '78']
    assert_equal expected, scrambled_eggs.rotation_array
  end

  def test_it_can_shift_rotation_array
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    scrambled_eggs.rotation_array
    expected = ['34', '56', '78', '12']
    assert_equal expected, scrambled_eggs.shift_it
    expected2 = ['56', '78', '12', '34']
    assert_equal expected2, scrambled_eggs.shift_it
    expected3 = ['78', '12', '34','56']
    assert_equal expected3, scrambled_eggs.shift_it
  end

  def test_it_can_convert_phrase_from_scrambled
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    scrambled_eggs.rotation_array
    assert_equal 'phjywcuazob', scrambled_eggs.scrambled
  end

end
