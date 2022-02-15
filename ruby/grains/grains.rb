=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains

  def self.square(day)
    if day < 65 && day > 0
      2 ** (day - 1)
    else
      raise ArgumentError
    end
  end

  def self.total
    2 ** 64 - 1
  end
end