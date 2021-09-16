=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(num)
    code = ""
    if num % 3 == 0
      code += "Pling"
    end
    if num % 5 == 0
      code += "Plang"
    end
    if num % 7 == 0
      code += "Plong"
    end
    if code == ""
      code = num.to_s
    end
    return code
  end
end
