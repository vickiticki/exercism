=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(testers)
    testers.select { |tester| @word.chars.sort == tester.downcase.chars.sort && @word != tester.downcase }
    
  end
end
