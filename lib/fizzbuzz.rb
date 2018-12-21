class FizzBuzz 
  def convert(num)
    if (num % 3).zero? && (num % 5).zero?
      "FizzBuzz"
    elsif (num % 3).zero?
      "Fizz"
    elsif (num % 5).zero?
      "Buzz"
    else
      num.to_s
    end
  end

  def run
    (1..100).each { |n| puts convert(n) }
  end
end

# fizzbuzz = FizzBuzz.new
# fizzbuzz.run
