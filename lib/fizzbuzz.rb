# frozen_string_literal: true

class FizzBuzz
  def encode(number)
    return divisible(number) if divisible(number)

    return 'fizzbuzz' if (number.digits.include? 5) && (number.digits.include? 3)
    return 'fizz' if number.digits.include? 3
    return 'buzz' if number.digits.include? 5
    return 'bam' if number.digits.include? 7

    number
  end

  private

  def divisible(number)
    return 'fizzbuzzbam' if (number % 15).zero? && (number % 7).zero?
    return 'fizzbuzz' if (number % 15).zero?
    return 'buzz' if (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'bam' if (number % 7).zero?
  end
end
