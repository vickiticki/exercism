class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <=4
      return @speed * 221.0
    elsif @speed <=8
      return @speed * 221 * 0.9
    elsif @speed == 9
      return 9 * 221 * 0.8
    else  
      return 10 * 221 * 0.77
    end
    
    raise 'Please implement the AssemblyLine#production_rate_per_hour method'
  end

  def working_items_per_minute
     if @speed <=4
      return (@speed * 221.0 / 60).to_i
    elsif @speed <=8
      return (@speed * 221 * 0.9 / 60).to_i
    elsif @speed == 9
      return (9 * 221 * 0.8 / 60).to_i
    else
      return (10 * 221 * 0.77 / 60).to_i
    end
    raise 'Please implement the AssemblyLine#working_items_per_minute method'
  end
end
