require_relative 'test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_can_return_todays_date
    offset = Offset.new
    todays_date = Time.now.strftime("%d%m%y").to_i
    assert_equal todays_date, offset.current_date
  end

  def test_it_has_time
    offset = Offset.new
    assert_equal 4, offset.last4.length
  end
end
