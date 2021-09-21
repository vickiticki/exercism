=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.strip
  end

  def word_count
    answer = Hash.new(0)

    words = @phrase.split /[^[:alpha:]\d'']+/
    words.each do |word|
      # if word == "'large'"
      #   word = "large"
      # end
      answer[word] += 1
    end
    return answer
  end

end