class Complement
  def self.of_dna(base)

    strand = base.chars
    strand.map do |base|
        base
      if base == "C"
        base.sub("C", "G")
      elsif base == "T"
        base.sub("T", "A")
      elsif base == "A"
        base.sub("A", "U")
      else
        base.sub("G", "C")
      end
    end.join
  end

end
