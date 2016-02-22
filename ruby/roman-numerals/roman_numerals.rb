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
    ROMANS.each do |arabic, roman|
      if input >= arabic
        conversion << roman
        input -= arabic
      end
    return conversion.join
    end
  end
end

puts 46.to_roman
puts 446.to_roman
