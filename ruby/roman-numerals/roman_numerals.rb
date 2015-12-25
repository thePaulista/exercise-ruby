class Fixnum
  VERSION = 1

  ROMANS = {
              1000 => 'M',
              900  => 'CM',
              500  => 'D',
              400  => 'CD',
              100  => 'C',
              90   => 'XC',
              50   => 'L',
              40   => 'XL',
              10   => 'X',
              9    => 'IX',
              5    => 'V',
              4    => 'IV',
              1    => 'I'  }

  def to_roman
    input = self
    conversion = []
    ROMANS.each_pair do |arabic, roman|
      div = input / arabic
      input %= arabic
      conversion << roman * div
    end
    return conversion.join
  end

end
