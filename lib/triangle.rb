class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    all_sides = [@side1, @side2, @side3].sort
    if all_sides.any?{|x| x <= 0} || all_sides[0] + all_sides[1] <= all_sides[2]
      begin
        raise TriangleError
        puts TriangleError.message
      end
    elsif all_sides.uniq.length == 1
      :equilateral
    elsif all_sides.uniq.length == 2
      :isosceles
    elsif all_sides.uniq.length == 3 
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "NO length available"
    end
  end


end