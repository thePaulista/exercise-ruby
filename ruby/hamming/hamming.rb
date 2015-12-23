class Hamming
  VERSION = 1

  def compute(x, y)
    if x.size != y.size
      raise (ArgumentError)
    else
      split_x = x.chars
      split_y = y.chars
      nested_splits = split_x.zip(split_y).map {|w| w[0] == w[1]}
      golden_distance = nested_splits.select.count {|n| n == false}
    end
  end
end
#
# h = Hamming.new
# print h.compute('AG', 'CT')
