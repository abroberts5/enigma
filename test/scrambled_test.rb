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
end
