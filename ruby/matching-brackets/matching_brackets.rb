=begin
Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
`matching_brackets_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matching-brackets` directory.
=end
class Brackets

  def self.paired?(string)
      brackets = "()[]{}"
    string.chars.each do |c|
      if !brackets.include?(c)
        string.gsub!(c,'')
      end
    end
    string.length.times do 
      string.gsub!('()','')
      string.gsub!('[]','')
      string.gsub!('{}','')
    end
    string.empty?
  end
  
end