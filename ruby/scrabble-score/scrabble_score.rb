=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble

  attr_accessor :word

  def initialize (word)
    @word = word
  end


  def score
    one = ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't']
    two = ['d', 'g']
    three = ['b', 'c', 'm', 'p']
    four = ['f', 'h', 'v', 'w', 'y']
    five = ['k']
    eight = ['j', 'x']
    ten = ['q', 'z']

    ans = 0
    i = 0
    if @word == nil
      return 0
    else
      @word = @word.downcase
    end
    while i < @word.length do
      if one.include?(@word[i])
        ans += 1
      elsif two.include?(@word[i])
        ans += 2
      elsif three.include?(@word[i])
        ans += 3
      elsif four.include?(@word[i])
        ans += 4
      elsif five.include?(@word[i])
        ans += 5
      elsif eight.include?(@word[i])
        ans += 8
      elsif ten.include?(@word[i])
        ans += 10
      else
        ans += 0
      end
      i += 1
    end
  return ans
  end


  def self.score(word)
    Scrabble.new(word).score
  end

end