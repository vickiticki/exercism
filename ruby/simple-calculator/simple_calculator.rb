
class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  def self.calculate(first_operand, second_operand, operation)
  raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
begin

    if second_operand == 0 && operation == '/'
      return "Division by zero is not allowed."
    end

    answer = 0
    if operation == '+'
      answer = first_operand + second_operand
    elsif operation == '/'
      answer = first_operand / second_operand
    elsif operation == '*'
      answer = first_operand * second_operand
    end
    return "#{first_operand} #{operation} #{second_operand} = #{answer}"
  
rescue 
raise ArgumentError
end

    # raise 'Please implement the SimpleCalculator.calculate method'
  end
end


