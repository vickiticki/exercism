=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram?(word)

    low_word = word.downcase.gsub(" ","").gsub("-","")
    i = 0
    while i < low_word.length do
      if low_word.count(low_word[i]) > 1
        return false
      end
    i += 1
    end
  return true
end
end
