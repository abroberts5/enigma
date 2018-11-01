class Offset
  attr_reader   :current_date
  
  def initialize
    @current_date = Time.now.strftime("%d%m%y").to_i
  end

  def last4
    date_squared = @current_date ** 2
    date_squared.to_s[-4..-1]
  end

  def rotation_a
    rotation_a = last4[0]
    rotation_a.to_i
  end

  def rotation_b
    rotation_b = last4[1]
    rotation_b.to_i
  end

  def rotation_c
    rotation_c = last4[2]
    rotation_c.to_i
  end

  def rotation_d
    rotation_d = last4[3]
    rotation_d.to_i
  end
end
