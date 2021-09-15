class LogLineParser
  def initialize(line)
    @line = line
  end
  def message
    # raise 'Please implement the LogLineParser#message method'
      arr = @line.split
      arr.shift
      @line = arr.join(" ")
   
  end
  def log_level
    # raise 'Please implement the LogLineParser#log_level method'
    arr = @line.split
    @line = arr[0].to_s.delete('[]:').downcase
  end
  def reformat
    # raise 'Please implement the LogLineParser#reformat method'
    arr = @line.split
    level = arr[0].to_s.delete('[]:').downcase
    arr.shift
    message = arr.join(" ")
    @line = message + " (" + level + ")"
  end
end