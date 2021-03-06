class Scrambled
  attr_reader     :rotation,
                  :phrase

  def initialize(final_rotation, phrase)
    @letters = ["a", "b", "c", "d", "e",
                "f", "g", "h", "i", "j",
                "k", "l", "m", "n", "o",
                "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y",
                "z", " "]
    @rotation   = final_rotation
    @phrase     = phrase
    @new_phrase = []
    @new_set    = []
  end

  def rotation_array
    @new_set << @rotation[6..7].to_s
    @new_set << @rotation[0..1].to_s
    @new_set << @rotation[2..3].to_s
    @new_set << @rotation[4..5].to_s
    @new_set
  end

  def shift_it
    first_shift = @new_set.shift
    push_back = @new_set.push(first_shift)
    push_back
  end

  def scrambled_eggs
    new_case = @phrase.chars
    new_case.map do |character|
      if @letters.include?(character)
        char_index = @letters.index(character)
        # char_index direction changes position
        new_position = char_index + shift_it.first.to_i
        new_index = new_position % 27
        new_encode = @letters[new_index].to_s
        @new_phrase << new_encode
      else
        @new_phrase << character
      end
    end
    @new_phrase.join
  end
end
