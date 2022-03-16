# frozen_string_literal: true

require './lib/name_normalizer/normalizer'

RSpec.describe NameNormalizer do
  it 'returns empty string given empty string' do
    normalizer = NameNormalizer.new('')

    expect(normalizer.normalize).to eq('')
  end

  it 'returns a mononym' do
    normalizer = NameNormalizer.new('Linus')

    expect(normalizer.normalize).to eq('Linus')
  end

  it 'swaps first and last name' do
    normalizer = NameNormalizer.new('Linus', 'Torvalds')

    expect(normalizer.normalize).to eq('Torvalds, Linus')
  end

  it 'trims the whitespace' do
    normalizer = NameNormalizer.new('   Linus   ', '   Torvalds ')

    expect(normalizer.normalize).to eq('Torvalds, Linus')
  end

  it 'accounts the middle name' do
    normalizer = NameNormalizer.new('Linus', 'Torvalds', 'Benedict')

    expect(normalizer.normalize).to eq('Torvalds, Linus B.')
  end

  it 'accounts multiple middle names' do
    normalizer = NameNormalizer.new('Linus', 'Torvalds', 'Benedict Some Name')

    expect(normalizer.normalize).to eq('Torvalds, Linus B. S. N.')
  end
end
