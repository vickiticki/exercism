=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(num)
    raise ArgumentError unless (@numbers.length >= num)
    i = 0
    result = []
    while i < @numbers.length - num + 1 do 
      new_string = ''
      j = 0
      while j < num do
        new_string += @numbers[i + j]
        j += 1
      end
    result.push(new_string)
    i += 1
    end
    result
  end

end
