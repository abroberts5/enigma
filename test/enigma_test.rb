require_relative 'test_helper'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encrypt_method_returns_hash_with_keys
    enigma = Enigma.new
    result = enigma.encrypt('h', '02715', '040895')
    assert_instance_of Hash, result
    assert_equal '02715', result[:key]
    assert_equal '040895', result[:date]
  end

  def test_key_is_returned_if_5_digits
    enigma = Enigma.new
    assert_equal 5, enigma.keyed_up('12345').length
  end

  def test_key_has_to_return_5_digits
    enigma = Enigma.new
    assert_equal 5, enigma.keyed_up('123').length
    assert_equal 5, enigma.keyed_up('1').length
  end

  def test_date_is_created_if_not_entered
    enigma = Enigma.new
    assert_equal 6, enigma.date_check('040895').length
    assert_equal 6, enigma.date_check('040').length
  end

  def test_it_can_group_by_index
    enigma = Enigma.new
    assert_instance_of Hash, enigma.group_by('hell')
    expected = {0 => 'h', 1 => 'e', 2 => 'l', 3 => 'l'}
    assert_equal expected, enigma.group_by('hell')
  end

  def test_it_can_update_string_for_encryption_helper
    enigma = Enigma.new
    assert_equal 'tlkjh', enigma.update_string('hello')
  end

end
