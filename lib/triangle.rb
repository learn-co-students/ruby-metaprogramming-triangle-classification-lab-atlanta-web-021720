require "pry"

class Triangle

    attr_accessor :a, :b, :c


    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      valid_triangle

      if a == b && b == c
        :equilateral
        elsif a == b || b == c || c == a
          :isosceles

        elsif a != b || b != c || c != a
          :scalene
        # binding.pry  
      end
      
    end

      def valid_triangle
          result1 = a + b > c && b + c > a && a + c > b
          result2 = a > 0 && b > 0 && c > 0
          
        tester = result1 == true && result2 == true

          if tester == true
            puts "good triangle"
        else
          
          begin
          raise TriangleError
        #rescue TriangleError => error
          #binding.pry
          error.message
          end
        end
      end
    



    class TriangleError < StandardError
      def message
        return "The triangle is invalid"
      end
    end
end

