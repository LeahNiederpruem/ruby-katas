# frozen_string_literal: true

require './lib/dictionary/dictionary'

RSpec.describe Dictionary do
  subject(:dictionary) { described_class.new }

  it 'checks if dictionary is initial empty' do
    expect(dictionary).to be_empty
  end

  it 'is not empty after adding a word' do
    dictionary.add('Table')

    expect(dictionary).not_to be_empty
  end

  it 'adds a word to the dictionary' do
    dictionary.add('Carpet', 'a floor covering made from thick woven fabric.')

    expect(dictionary.definition('Carpet')).to eq('a floor covering made from thick woven fabric.')
  end
end
