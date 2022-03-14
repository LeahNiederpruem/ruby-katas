# frozen_string_literal: true

require './lib/dictionary/dictionary'

RSpec.describe Dictionary do
  it 'returns a word' do
    dictionary = Dictionary.new

    expect(dictionary.word('Table')).to eq('Table')
  end
end
