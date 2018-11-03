require_relative 'final_rotation'
require_relative 'key'
require_relative 'offset'

class Enigma
  attr_reader     :letters

  def initialize
    @letters = ["a", "b", "c", "d", "e",
                "f", "g", "h", "i", "j",
                "k", "l", "m", "n", "o",
                "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y",
                "z", " "]
    @encrypt_hash = Hash.new
    @new_phrase   = []
  end

  def encrypt(string, key, date)
    @encrypt_hash[:encryption] = scrambled(string, key)
    @encrypt_hash[:key] = keyed_up(key)
    @encrypt_hash[:date] = date
    @encrypt_hash
  end

  def keyed_up(key)
    if key.length < 5
      new_key = Key.new
      new_key.num.join
    else
      key
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

  def scrambled(help_string, key = '02715')
    new_case = group_by(help_string)
    new_case = help_string.chars
    new_case.map do |character|
      if @letters.include?(character)
        char_index = @letters.index(character) + 1
        new_position = char_index # + key[0..1]
        new_index = new_position % 27
        new_encode = @letters[new_index].to_s
        @new_phrase << new_encode
      else
        p "incorrect input"
      end
    end
    @new_phrase.join
  end

   # new_message = []
   # new_message = my_message.chars
   # i = 0
   # #integer position
   # size = my_message.length
   # new_encrypted_array = []
   # while i <= size do
   #     #first character
   #     @array.find_index(new_message[i]) + final_rotation_a > @array.length
   #     new_encrypted_array[i] = @array[(@array.find_index(new_message[i]) - (size + final_rotation_a) + 1).abs]
   #     : new_encrypted_array[i] = @array[@array.find_index(new_message[i]) + final_rotation_a]

end
