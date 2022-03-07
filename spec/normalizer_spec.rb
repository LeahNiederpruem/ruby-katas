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
end
