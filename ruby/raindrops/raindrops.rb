
class Raindrops
  VERSION = 1

  SOUNDS = { 3 => "Pling",
             5 => "Plang",
             7 => "Plong" }

  def self.convert(input_num)
    prime_num = SOUNDS.keys
    heres_rain = prime_num.select {|n| input_num % n == 0 }
    if heres_rain == []
      return input_num.to_s
    else
      heres_rain.map {|x| SOUNDS[x]}.join
    end
  end
end
