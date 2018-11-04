require_relative 'key'
require_relative 'offset'
require_relative 'scrambled'

class Enigma

  def initialize
    @encrypt_hash = Hash.new
    @new_phrase   = []
  end

  def encrypt(string, key, date)
    @encrypt_hash[:encryption] = string
    @encrypt_hash[:key] = keyed_up(key)
    @encrypt_hash[:date] = date_check(date)
    @encrypt_hash
  end

  def update_string(string)

  end

  def keyed_up(key)
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
