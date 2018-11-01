class Key
  attr_reader   :num
  def initialize
    @num  = [rand(1..9), rand(1..9), rand(1..9),
             rand(1..9), rand(1..9)]
  end

  def a_rotation
    a = @num[0].to_s + @num[1].to_s
    a.to_i
  end

  def b_rotation
    b = @num[1].to_s + @num[2].to_s
    b.to_i
  end

  def c_rotation
    c = @num[2].to_s + @num[3].to_s
    c.to_i
  end

  def d_rotation
    d = @num[3].to_s + @num[4].to_s
    d.to_i
  end
end
