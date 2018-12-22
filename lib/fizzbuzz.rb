class FizzBuzz
  attr_reader :range_fizz_buzz

  def initialize
    @range_fizz_buzz = 1..100
  end

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

  def print_value(value)
    puts convert(value)
  end

  def run
    @range_fizz_buzz.each { |n| print_value(n) }
  end
end

# fizzbuzz = FizzBuzz.new
# fizzbuzz.run
