=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  def self.song()

  days = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

  gifts = ["a Partridge in a Pear Tree.\n", "two Turtle Doves, and ", "three French Hens, ", "four Calling Birds, ", "five Gold Rings, ", "six Geese-a-Laying, ", "seven Swans-a-Swimming, ", "eight Maids-a-Milking, ", "nine Ladies Dancing, ", "ten Lords-a-Leaping, ", "eleven Pipers Piping, ", "twelve Drummers Drumming, "]

  i = 0
    song = []
  while i < 12 do
     verse = "On the " + days[i] + " day of Christmas my true love gave to me: " 
    x = i
    while x >= 0
      verse += gifts[x]
      x -=1
    end
    song << verse
    
    i += 1
  end
  
  song.join("\n")

  end

end