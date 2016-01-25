class Rectangle

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    @length *2 + @breadth * 2
  end

  def area
    @length * @breath
  end

end


class Square < Rectangle

  def initialize(length)
    super(length, length)
  end

end


my_square = Squre.new(5)
puts my_square.perimeter
puts my_square.area
