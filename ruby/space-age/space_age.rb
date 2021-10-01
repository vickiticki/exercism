=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  
  def initialize (seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / 31557600.00
  end

  def on_mercury
    @seconds / (31557600 * 0.2408467)
  end
  def on_venus
    @seconds / (31557600 * 0.61519726)
  end
  def on_mars 
    @seconds / (31557600 * 1.8808158)
  end
  def on_jupiter
    @seconds / (31557600 * 11.8626115)
  end
  def on_saturn
    @seconds / (31557600 * 29.447498)
  end
  def on_uranus
    @seconds / (31557600 * 84.016846)
  end
  def on_neptune
    @seconds / (31557600 * 164.79132)
  end

end