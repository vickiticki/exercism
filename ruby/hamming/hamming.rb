=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(string1, string2)
    if string1.length != string2.length
      raise ArgumentError
    end

    diff = 0
    i = 0
    while i < string1.length do
      if string1[i] != string2[i]
        diff += 1
      end
      i += 1
    end
  return diff
  end
end