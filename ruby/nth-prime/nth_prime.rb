require 'pry'

class Prime

  def self.nth(input)
    raise ArgumentError if input == 0
    prime(input).last.join.to_i
  end

   def prime(input)
     prime_array = [[2]]
      n = 3
      while prime_array.count != input
        prime = (3..n).select {|i| n % i == 0 }
        prime_array << prime if prime.one?
        n += 2
      end
    prime_array
   end

end
