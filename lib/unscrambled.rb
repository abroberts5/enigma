class UnScrambled
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
  end
end
