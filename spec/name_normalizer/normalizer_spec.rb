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
    expect(normalizer.normalize('   Linus    ')).to eq('Linus')

    expect(normalizer.normalize('   Linus    ', 'Torvalds   ')).to eq('Torvalds, Linus')
  end
end
