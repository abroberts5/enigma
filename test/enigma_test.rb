require_relative 'test_helper'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encrypt_method_returns_hash_with_keys
    enigma = Enigma.new
    result = enigma.encrypt('hello', '02715', '040895')
    assert_equal '02715', result[:key]
    assert_equal '040895', result[:date]
    assert_equal 'keder', result[:encryption]
  end

  def test_default_key_and_offset_method
    enigma = Enigma.new
    assert_equal 5, enigma.default_key.length
    assert_equal 6, enigma.default_offset.length
  end

  def test_key_is_returned_if_5_digits
    enigma = Enigma.new
    assert_equal 5, enigma.key_check('12345').length
  end

  def test_key_has_to_return_5_digits
    enigma = Enigma.new
    assert_equal 5, enigma.key_check('123').length
    assert_equal 5, enigma.key_check('1').length
  end

  def test_date_is_created_if_not_entered
    enigma = Enigma.new
    assert_equal 6, enigma.date_check('040895').length
    assert_equal 6, enigma.date_check('040').length
  end

  def test_it_can_update_string_for_encryption_helper
    enigma = Enigma.new
    assert_equal 'tlni ', enigma.update_string('12345678', 'hello')
  end

  def test_final_rotation_method_can_be_condensed
    enigma = Enigma.new
    assert_equal 8, enigma.final_rotation('02715', '040895').length
  end

  def test_it_can_decrypt_string_in_the_same_manner
    enigma = Enigma.new
    result = enigma.decrypt('keder', '02715', '040895')
    assert_equal '02715', result[:key]
    assert_equal '040895', result[:date]
    assert_equal 'hello', result[:decryption]
  end
end
