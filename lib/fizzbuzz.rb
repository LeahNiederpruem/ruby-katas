# frozen_string_literal: true

class FizzBuzzGame
  def check_number(number)
    return 'fizzbuzz' if (number % 15).zero?

    return 'buzz' if (number % 5).zero?

    return 'fizz' if (number % 3).zero?

    number
  end
end
