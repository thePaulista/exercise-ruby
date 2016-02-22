class Gigasecond
  VERSION = 1

  def from(t)
    return (t  + 10 ** 9).utc
  end

end

# gs = Gigasecond.new
# puts gs.from(Time.utc(1973, 5, 8, 24, 0, 0,  0))
