=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(number)
    number = number.gsub(" ", "")
    if number.length <= 1
      return false
    end

    if number.count("0-9") < number.length
      return false
    end

    reverse_number = number.reverse
    new_num = ""
    
    i = 0
    while i < reverse_number.length do
     
      if i % 2 == 0
        new_num = new_num + reverse_number[i]
      else
        change_num = reverse_number[i].to_i * 2
        if change_num > 9
          change_num -= 9
        end
        new_num = new_num + change_num.to_s
      end
    i += 1
    end

    j = 0
    final = 0
    while j < new_num.length do 
      final += new_num[j].to_i
      j += 1
    end
  if final % 10 == 0
    return true
  else
    return false
  end
      
      
    
end
end
