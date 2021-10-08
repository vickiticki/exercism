=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end
  def to(limit)
    if @factors.include?(0)
      return 0
    end
    @factors.flat_map do |factor|
      (factor...limit).step(factor).to_a
    end.uniq.sum
  end


end
