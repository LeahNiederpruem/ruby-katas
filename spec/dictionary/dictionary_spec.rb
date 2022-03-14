# frozen_string_literal: true

require './lib/dictionary/dictionary'

RSpec.describe Dictionary do
  it 'is initial empty' do
    dictionary = Dictionary.new

    expect(dictionary).to be_empty
  end

  it 'is not empty after adding word and definition' do
    dictionary = Dictionary.new

    dictionary.add('Dog', [])

    expect(dictionary).not_to be_empty
  end

  it 'deletes given word and the related definitions' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Definition 1'])
    dictionary.delete_word('Dog')

    expect(dictionary.definition('Dog')).to eq(nil)
  end

  it 'deletes a definition of a given word' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Definition 1', 'Definition 2'])
    dictionary.delete_definition('Dog', 'Definition 2')

    expect(dictionary.definition('Dog')).to eq(['Definition 1'])
  end

  it 'gets the definitions of a word' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Definition 1', 'Definition 2'])

    expect(dictionary.definition('Dog')).to eq(['Definition 1', 'Definition 2'])
  end

  it 'appends a new definition to existing entry' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Definition 1', 'Definition 2'])
    dictionary.append('Dog', ['Definition 3'])

    expect(dictionary.definition('Dog')).to eq(['Definition 1', 'Definition 2', 'Definition 3'])
  end

  it 'gets # of words' do
    dictionary = Dictionary.new

    dictionary.add('Dog', [])
    dictionary.add('Bird', [])
    dictionary.add('Duck', [])

    expect(dictionary.total_words).to eq(3)
  end

  it 'gets total # of definitions' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Definition 1'])
    dictionary.add('Bird', ['Definition 2', 'Definition 3'])
    dictionary.add('Duck', ['Definition 4'])

    expect(dictionary.total_definitions).to eq(4)
  end

  it 'returns nil when asking for non existent word' do
    dictionary = Dictionary.new

    expect(dictionary.definition('Dog')).to eq(nil)
  end

  it 'returns an error when storing nil key' do
    dictionary = Dictionary.new

    expect { dictionary.add('', '') }.to raise_error('Cannot store empty string')
  end
end
