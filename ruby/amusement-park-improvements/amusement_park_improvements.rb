class Attendee
  def initialize(height)
    @height = height
  end
  def issue_pass!(pass_id)
    @pass_id = pass_id
  end
  def revoke_pass!
    @pass_id = nil
  end
  # Do not edit above methods, add your own methods below.
  def has_pass?
    if @pass_id == nil
      return false
    else
      return true
    end
    raise 'Please implement the Attendee#pass? method'
  end
  def fits_ride?(ride_minimum_height)
    if @height >= ride_minimum_height
      return true
    else
      return false
    end
    raise 'Please implement the Attendee#fits_ride? method'
  end
  def allowed_to_ride?(ride_minimum_height)
    if @pass_id != nil && @height >= ride_minimum_height
      return true
    else
      return false
    end
    raise 'Please implement the Attendee#allowed_to_ride? method'
  end
end
