# frozen_string_literal: true

require 'fizzbuzz'

RSpec.describe FizzBuzz do
  subject(:fizzbuzz) { FizzBuzz.new }

  it 'returns the given number' do
    expect(fizzbuzz.encode(1)).to eq(1)
    expect(fizzbuzz.encode(2)).to eq(2)
  end

  it 'replaces numbers divisible by 3 with fizz' do
    expect(fizzbuzz.encode(3)).to eq('fizz')
    expect(fizzbuzz.encode(6)).to eq('fizz')
  end

  it 'replaces numbers divisible by 5 with buzz' do
    expect(fizzbuzz.encode(5)).to eq('buzz')
    expect(fizzbuzz.encode(10)).to eq('buzz')
  end

  it 'replaces numbers divisible by 3 AND 5 with fizzbuzz' do
    expect(fizzbuzz.encode(15)).to eq('fizzbuzz')
    expect(fizzbuzz.encode(30)).to eq('fizzbuzz')
  end

  it 'replaces numbers containing the digit 3 with fizz' do
    expect(fizzbuzz.encode(13)).to eq('fizz')
    expect(fizzbuzz.encode(32)).to eq('fizz')
  end

  it 'replaces numbers containing the digit 5 with buzz' do
    expect(fizzbuzz.encode(52)).to eq('buzz')
    expect(fizzbuzz.encode(58)).to eq('buzz')
  end

  it 'replaces numbers containing the digit 5 AND 3 with fizzbuzz' do
    expect(fizzbuzz.encode(53)).to eq('fizzbuzz')
  end

  describe 'dry fizzbuzz' do
    it 'replaces numbers divisible by 7 with bam' do
      expect(fizzbuzz.encode(7)).to eq('bam')
      expect(fizzbuzz.encode(14)).to eq('bam')
    end

    it 'replaces numbers containing the digit 7 with bam' do
      expect(fizzbuzz.encode(47)).to eq('bam')
    end

    it 'replaces numbers divisible by 3 and 7 with fizzbam'

    it 'replaces numbers divisible by 5 and 7 with buzzbam'

    it 'replaces numbers divisible by 3, 5 and 7 with fizzbuzzbam' do
      expect(fizzbuzz.encode(105)).to eq('fizzbuzzbam')
      expect(fizzbuzz.encode(210)).to eq('fizzbuzzbam')
    end
  end
end
