class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  @sides = []
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @sides = [length1, length2, length3]
  end
  def equilateral?
    (@length1 == @length2) && (@length1 == @length3)
  end
  def isosceles?
    (@length1 == @length2 && @length3 != @length1) || (@length2 == @length3 && @length1 != @length2) || (@length1 == @length3 && @length2 != @length3)
  end
  def scalene?
    (@length1 != @length2) && (@length1 != @length3) && (@length3 != @length2)
  end
  def lessThanZero
    @sides.select do |length|
      length <= 0
    end
  end
  def validSides
    (@length1 + @length2 > @length3) && (@length2 + @length3 > @length1) && (@length1 + @length3 > @length2)
  end
  def kind
    if lessThanZero == false || validSides == true
      if equilateral?
        return :equilateral
      elsif isosceles?
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    def message
      "This isnt a valid Triangle"
    end
  end
end