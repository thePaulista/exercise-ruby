class Hamming

  def compute(x, y)
    distance = 0
    split_x = x.chars
    split_y = y.chars
    nested_splits = split_x.zip(split_y).map {|w| w[0] == w[1]}
    nested_splits.each do |w|
      if true
        distnace = 0
      else
        distance += 1
    end
    return nested_splits
  end
end

end
