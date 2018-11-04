require_relative 'key'
require_relative 'offset'

class FinalRotation
  attr_reader     :key,
                  :offset

  def initialize(number_hash)
    @key     = number_hash[:key]
    @offset  = number_hash[:offset]
  end

  def first_rotation
    @key.a_rotation + @offset.a_offset
  end

  def second_rotation
    @key.b_rotation + @offset.b_offset
  end

  def third_rotation
    @key.c_rotation + @offset.c_offset
  end

  def forth_rotation
    @key.d_rotation + @offset.d_offset
  end

  def full_final
    final_string = ''
    final_string << first_rotation.to_s
    final_string << second_rotation.to_s
    final_string << third_rotation.to_s
    final_string << forth_rotation.to_s
    final_string
  end
end
