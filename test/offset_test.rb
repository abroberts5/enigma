require_relative 'test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_can_return_todays_date
    offset = Offset.new
    todays_date = Time.now.strftime("%d%m%y")
    assert_equal todays_date, offset.current_date
  end

  def test_it_has_time
    offset = Offset.new
    assert_equal '9924', offset.last4
    assert_equal 4, offset.last4.length
  end

  def test_offsets_return_each_digit_of_last_4
    offset = Offset.new
    assert_equal 9, offset.a_offset
    assert_equal 9, offset.b_offset
    assert_equal 2, offset.c_offset
    assert_equal 4, offset.d_offset
  end
end
