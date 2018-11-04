require_relative 'final_rotation'

class Scrambled
  attr_reader     :rotation,
                  :phrase

  def initialize(final_rotation, phrase)
    @rotation = final_rotation
    @phrase   = phrase
  end

  # def scrambled(help_string, key = '02715')
  #   new_case = group_by(help_string)
  #   new_case = help_string.chars
  #   new_case.map do |character|
  #     if @letters.include?(character)
  #       char_index = @letters.index(character) + 1
  #       new_position = char_index # + key[0..1]
  #       new_index = new_position % 27
  #       new_encode = @letters[new_index].to_s
  #       @new_phrase << new_encode
  #     else
  #       p "incorrect input"
  #     end
  #   end
  #   @new_phrase.join
  # end
end
