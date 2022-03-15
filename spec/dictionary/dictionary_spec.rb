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
    dictionary.add('Carpet', ['Definition 1'])

    expect(dictionary.definitions('Carpet')).to eq(['Definition 1'])
  end

  it 'adds a word with multiple definitions' do
    dictionary.add('Carpet', ['Definition 1', 'Definition 2'])

    expect(dictionary.definitions('Carpet')).to eq(['Definition 1', 'Definition 2'])
  end

  it 'prevents overwriting of definitions' do
    dictionary.add('Carpet', ['Definition 1', 'Definition 2'])
    dictionary.add('Carpet', 'Definition 3')

    expect(dictionary.definitions('Carpet')).to eq(['Definition 1', 'Definition 2', 'Definition 3'])
  end

  it 'appends a new definition to existing entry' do
    dictionary.add('Door', ['Definition 1', 'Definition 2'])
    dictionary.append('Door', 'Definition 3')

    expect(dictionary.definitions('Door')).to eq(['Definition 1', 'Definition 2', 'Definition 3'])
  end

  it 'deletes a word and the related definitions' do
    dictionary.add('Door', ['Definition 1', 'Definition 2'])

    expect(dictionary.delete_word('Door')).to be_truthy
  end

  it 'deletes a definition to the related word' do
    dictionary.add('Door', ['Definition 1', 'Definition 2'])

    expect(dictionary.delete_definition('Door', 'Definition 2')).to eq(['Definition 1'])
  end
end
