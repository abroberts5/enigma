require_relative 'test_helper'

class ScrambledTest < Minitest::Test

  def test_it_exists
    scrambled_eggs = Scrambled.new('12345678', 'hello world')
    assert_instance_of Scrambled, scrambled_eggs
  end
end
