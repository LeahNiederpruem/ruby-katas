# frozen_string_literal: true

require './lib/name_normalizer/normalizer'

RSpec.describe NameNormalizer do
  subject(:normalizer) { described_class.new }

  it 'returns empty string given empty string' do
    expect(normalizer.normalize('')).to eq('')
  end

  it 'returns a mononym' do
    expect(normalizer.normalize('Linus')).to eq('Linus')
  end

  it 'swaps first and last name' do
    expect(normalizer.normalize('Linus', 'Torvalds')).to eq('Torvalds, Linus')
  end

  it 'trims the whitespace' do
    expect(normalizer.normalize('   Linus    ', 'Torvalds   ')).to eq('Torvalds, Linus')
  end

  it 'accounts the middle name' do
    expect(normalizer.normalize('Linus', 'Torvalds', 'Benedict')).to eq('Torvalds, Linus B.')
  end

  it 'accounts multiple middle names' do
    expect(normalizer.normalize('Linus', 'Torvalds', 'Benedict Some Name')).to eq('Torvalds, Linus B. S. N.')
  end
end
