class Complement
  VERSION = 2

  BASE_COMP = { 'G' => 'C',
                'C' => 'G',
                'T' => 'A',
                'A' => 'U' }

  def self.of_dna(dna_base)
    raise (ArgumentError) if dna_base == "U" || dna_base.chars.any? {|d| d == "X" }
    dna_base.chars.map {|b| BASE_COMP[b]}.join("")
  end

  def self.of_rna(rna_base)
    raise (ArgumentError) if rna_base == "T" || rna_base.chars.any? {|r| r == "X"}
    inverted_bases = BASE_COMP.invert
    rna_base.chars.map {|n| inverted_bases[n]}.join("")
  end

end
