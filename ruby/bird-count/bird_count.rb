class BirdCount
  def self.last_week
    return [0, 2, 5, 3, 7, 8, 4]
    raise 'Please implement the BirdCount.last_week method'
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
    # raise 'Please implement the BirdCount#initialize method'
  end

  def yesterday
    return @birds_per_day[-2]
    raise 'Please implement the BirdCount#yesterday method'
  end

  def total
    return @birds_per_day.sum
    raise 'Please implement the BirdCount#total method'
  end

  def busy_days
    i = 0
    @birds_per_day.each do |bird|
      if bird >= 5
        i += 1
      end
    end
    return i
    raise 'Please implement the BirdCount#busy_days method'
  end

  def day_without_birds?
    @birds_per_day.any?(0)
    # raise 'Please implement the BirdCount#day_without_birds method'
  end
end
