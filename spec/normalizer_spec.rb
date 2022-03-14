# frozen_string_literal: true

require 'normalizer'

RSpec.describe NameNormalizer do
  it 'returns empty string given an empty string' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize).to eq('')
  end

  it 'returns a mononym' do
    normalizer = NameNormalizer.new('Linus')

    expect(normalizer.normalize).to eq('Linus')
  end

  it 'swaps the name and surname' do
    normalizer = NameNormalizer.new('Linus', 'Torvalds')

    expect(normalizer.normalize).to eq('Torvalds, Linus')
  end

  it 'trims leading and trailing whitespace' do
    normalizer = NameNormalizer.new('   Linus   ', 'Torvalds    ')

    expect(normalizer.normalize).to eq('Torvalds, Linus')
  end

  it 'adds the middle name' do
    normalizer = NameNormalizer.new('Linus', 'Torvalds', 'Benedict')

    expect(normalizer.normalize).to eq('Torvalds, Linus B.')
  end
end
