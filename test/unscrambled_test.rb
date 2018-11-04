require_relative 'test_helper'

class UnScrambledTest < Minitest::Test
  def test_it_exists
    loosey = UnScrambled.new('12345678', 'hello world')
    assert_instance_of UnScrambled, loosey
  end
end
