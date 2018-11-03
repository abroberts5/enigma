class Offset
  attr_reader   :current_date

  def initialize
    @current_date = Time.now.strftime("%d%m%y")
  end

  def last4
    date_to_integer = @current_date.to_i
    date_squared = date_to_integer ** 2
    date_squared.to_s[-4..-1]
  end

  def a_offset
    offset_1 = last4[0]
    offset_1.to_i
  end

  def b_offset
    offset_2 = last4[1]
    offset_2.to_i
  end

  def c_offset
    offset_3 = last4[2]
    offset_3.to_i
  end

  def d_offset
    offset_4 = last4[3]
    offset_4.to_i
  end
end
