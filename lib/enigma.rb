require_relative 'key'
require_relative 'offset'
require_relative 'scrambled'

class Enigma

  def initialize
    @encrypt_hash   = Hash.new
    @last_rotation  = []
    @new_phrase     = []
  end

  def encrypt(string, key, date)
    @encrypt_hash[:key] = key_check(key)
    @encrypt_hash[:date] = date_check(date)
    transition = final_rotation(key, date)
    @encrypt_hash[:encryption] = update_string(transition, string)
    @encrypt_hash
  end

  def decrypt(string, key, date)

  end

  def update_string(final_rotation, string)
    string_conversion = Scrambled.new(final_rotation, string)
    string_conversion.scrambled_eggs
  end

  def key_check(key)
    if key.length < 5
      new_key = Key.new
      new_key.num.join
    else
      key
    end
  end

  def date_check(date)
    if date.length < 6
      updated_date = Offset.new
      updated_date.current_date.to_s
    else
      date
    end
  end

  def final_rotation(key, date)
    new_date = (date.to_i ** 2).to_s
    @last_rotation << (key[0..1].to_i + new_date[-4].to_i).to_s
    @last_rotation << (key[1..2].to_i + new_date[-3].to_i).to_s
    @last_rotation << (key[2..3].to_i + new_date[-2].to_i).to_s
    @last_rotation << (key[3..4].to_i + new_date[-1].to_i).to_s
    @last_rotation.join
  end

  def group_by(string_letters)
    array = []
    grouped = Hash.new{|hash, key| hash[key] = []}
    array << string_letters.chars
    array.first.each_with_index do |letter, index|
      grouped[index] = letter
    end
    grouped
  end
end
