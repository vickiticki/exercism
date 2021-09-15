class Attendee
  def initialize(height)
    # raise 'Implement the Attendee#initialize method'
    @height = height
  end

  def height
    # raise 'Implement the Attendee#height method'
    return @height
  end

  def pass_id
    # raise 'Implement the Attendee#pass_id method'
    return @pass_id
  end

  def issue_pass!(pass_id)
    # raise 'Implement the Attendee#issue_pass! method'
    @pass_id = pass_id
  end

  def revoke_pass!
    # raise 'Implement the Attendee#revoke_pass! method'
    @pass_id = nil
  end
end
