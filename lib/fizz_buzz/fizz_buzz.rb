# frozen_string_literal: true

class FizzBuzz
  def encode(number)
    return 'fizzbuzz' if fizzbuzz?(number)
    return 'buzz' if buzz?(number)
    return 'fizz' if fizz?(number)

    number
  end

  private

  def fizzbuzz?(number)
    (number % 15).zero? or (number.digits.include? 5) && (number.digits.include? 3)
  end

  def buzz?(number)
    (number % 5).zero? or number.digits.include? 5
  end

  def fizz?(number)
    (number % 3).zero? or number.digits.include? 3
  end
end
