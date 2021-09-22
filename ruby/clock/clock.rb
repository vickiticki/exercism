=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock

  attr_accessor :total_minutes
  def initialize(hour: 0, minute: 0)
    @total_minutes = hour * 60 + minute
  end

  def +(other)
    @total_minutes += other.total_minutes
    self
  end

  def -(other)
    @total_minutes -= other.total_minutes
    self
  end
  def ==(other)
    to_s == other.to_s
  end

  def to_s

    hours = ((total_minutes / 60) % 24)
    hours < 10 ? hour_result = "0" + hours.to_s : hour_result = hours.to_s
    minutes = (total_minutes % 60)
    minutes < 10 ? minute_result = "0" + minutes.to_s : minute_result = minutes.to_s
    hour_result + ":" + minute_result    
  end

end