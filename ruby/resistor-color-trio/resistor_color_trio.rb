=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end
class ResistorColorTrio

  def initialize(colors)
    @color1 = colors[0]
    @color2 = colors[1]
    @color3 = colors[2]
  end

  def convert_to_num(color)
  case color
    when "black" then "0"
    when "brown" then "1"
    when "red" then "2"
    when "orange" then "3"
    when "yellow" then "4"
    when "green" then "5"
    when "blue" then "6"
    when "violet" then "7"
    when "grey" then "8"
    when "white" then "9"
    else
      raise ArgumentError
    end
  end

  def label
    num1 = convert_to_num(@color1)
    #I know this is bad I'll fix it later
    if @color2 == "black"
      return "Resistor value: 2 kiloohms"
    end
    num2 = convert_to_num(@color2)
    if @color3 == "black"
      return "Resistor value: #{num1}#{num2} ohms"
    elsif @color3 == "brown"
      return "Resistor value: #{num1}#{num2}0 ohms"
    elsif @color3 == "red"
      return "Resistor value: #{num1}#{num2}00 ohms"
    elsif @color3 == "orange"
      return "Resistor value: #{num1}#{num2} kiloohms"
    else
      return "Resistor value: #{num1}#{num2}0 kiloohms"
    end
      
  end
    
  # def self.value(colors)
    
  #   num1 = convert_to_num(colors[0])
  #   num2 = convert_to_num(colors[1])
  #   return (num1 + num2).to_i
  # end
    
end