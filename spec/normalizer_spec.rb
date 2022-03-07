# frozen_string_literal: true

require 'normalizer'

RSpec.describe NameNormalizer do
  it 'returns empty string given an empty string' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize('', '')).to eq('')
  end

  it 'returns a mononym' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize('Linus', '')).to eq('Linus')
  end

  it 'swaps the name and surname' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize('Linus', 'Torvalds')).to eq('Torvalds, Linus')
  end

  it 'trims leading and trailing whitespace' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize('   Linus   ', 'Torvalds  ')).to eq('Torvalds, Linus')
  end

  it 'initializes the middle name' do
    normalizer = NameNormalizer.new

    expect(normalizer.normalize('Linus', 'Torvalds', 'Benedict')).to eq('Torvalds, Linus B.')
  end
end
