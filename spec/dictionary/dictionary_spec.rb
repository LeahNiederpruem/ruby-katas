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

  it 'adds a word with one definition' do
    dictionary.add('Carpet', 'Definition 1')

    expect(dictionary.definitions('Carpet')).to eq('Definition 1')
  end

  it 'adds a word with multiple definitions' do
    dictionary.add_definitions('Carpet', ['Definition 1', 'Definition 2'])

    expect(dictionary.definitions('Carpet')).to eq(['Definition 1', 'Definition 2'])
  end
end
