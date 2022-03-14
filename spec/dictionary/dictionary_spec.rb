# frozen_string_literal: true

require './lib/dictionary/dictionary'

RSpec.describe Dictionary do
  subject(:dictionary) { described_class.new }

  it 'checks if dictionary is initial empty' do
    expect(dictionary).to be_empty
  end

  it 'adds a word to the dictionary' do
    dictionary.add('Table')

    expect(dictionary).not_to be_empty
  end

  it 'returns a word' do
    expect(dictionary.word('Table')).to eq('Table')
  end
end
