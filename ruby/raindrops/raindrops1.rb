
class RaindropsVersion2
  VERSION = 1

  SOUNDS = { 3 => "Pling",
             5 => "Plang",
             7 => "Plong" }

  def self.convert(input_num)
    prime_num = SOUNDS.keys
    heres_rain = prime_num.select {|n| input_num % n == 0 }
    heres_rain.empty? ? input_num.to_s : heres_rain.map {|x| SOUNDS[x]}.join
  end
end

#I know the last line is super long with the additiona of an enum,
#but I REALLY wanted to use a ternary operator - just b/c it's there.
#I won't do it when it counts :-)
