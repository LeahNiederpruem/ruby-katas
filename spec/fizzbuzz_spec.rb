# frozen_string_literal: true

require 'fizzbuzz'

RSpec.describe FizzBuzzGame do
  fizzbuzz = FizzBuzzGame.new

  describe '#check_number' do
    it 'returns number if number is not divisible by 3 or 5' do
      expect(fizzbuzz.check_number(1)).to eq(1)
    end

    it 'checks if number is divisible by 3' do
      expect(fizzbuzz.check_number(3)).to eq('fizz')
      expect(fizzbuzz.check_number(6)).to eq('fizz')
    end

    it 'checks if number is divisible by 5' do
      expect(fizzbuzz.check_number(5)).to eq('buzz')
      expect(fizzbuzz.check_number(10)).to eq('buzz')
    end

    it 'checks if number is divisible by 3 and 5' do
      expect(fizzbuzz.check_number(15)).to eq('fizzbuzz')
      expect(fizzbuzz.check_number(30)).to eq('fizzbuzz')
    end
  end
end
