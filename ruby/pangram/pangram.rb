=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end
class Pangram
  def self.pangram?(thing)
    low_sentence = thing.downcase
    tester = "abcdefghijklmnopqrstuvwxyz"
    i = 0
    while i < 26 do
      if low_sentence.count(tester[i]) == 0
        return false
      end
      i += 1
    end
    true
  
  end
end