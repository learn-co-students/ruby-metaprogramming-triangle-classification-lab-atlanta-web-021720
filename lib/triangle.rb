class Triangle
  attr_accessor :sideOne, :sideTwo, :sideThree

  def initialize(sideOne, sideTwo, sideThree)
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
  end

  def kind
    if sideOne <= 0 || sideTwo <= 0 || sideThree <= 0 
      raise TriangleError
    end
    if sideOne + sideTwo <= sideThree || sideOne + sideThree <= sideTwo || sideThree + sideTwo <= sideOne
      raise TriangleError
    end
    if sideOne == sideThree && sideOne == sideTwo && sideThree == sideTwo
      return :equilateral
    end
    if sideOne == sideThree || sideOne == sideTwo || sideThree == sideTwo
      return :isosceles
    end
    if sideOne != sideTwo && sideTwo != sideThree && sideThree != sideOne
      return :scalene
    end
  end 
  class TriangleError < StandardError

  end
end
