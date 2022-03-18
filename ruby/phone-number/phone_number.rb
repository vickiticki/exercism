=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
 class PhoneNumber
  NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  def self.clean(string)
    number = ""
    string.split("").each do |c|
      if NUMBERS.include? c 
        number += c
      end 
    end
  
    if number.length == 11 && number[0] == "1"
      number = number[1..10]
    end
  
    if number.length == 10  
      if number[0] == "0" || number[0] == "1" || number[3] == "0" || number[3] == "1"
        return nil
      else
        return number
      end
    else
      return nil
    end
  end

end