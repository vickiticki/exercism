=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle

  def initialize(arr)
    @a = arr[0]
    @b = arr[1]
    @c = arr[2]
  end

  def equilateral?
   
    if @a == @b && @a == @c && @a > 0
      return true
    else
      return false
    end
  end

  def isosceles?
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a 
      return false
    end 
    if @a == @b  || @a == @c || @b == @c 
      return true
    else
      return false
    end
  end

  def scalene?
     if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a 
      return false
    end 
    if @a != @b && @a != @c 
      return true
    else
      return false
    end
  end

end
