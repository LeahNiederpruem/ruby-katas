# frozen_string_literal: true

require 'dictionary'

RSpec.describe Dictionary do
  it 'is initial empty' do
    dictionary = Dictionary.new

    expect(dictionary).to be_empty
  end

  it 'is not empty after adding word and definition' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['a domestic, meat-eating animal related to the wolf and fox'])

    expect(dictionary).not_to be_empty
  end

  it 'gets the definitions of a word' do
    dictionary = Dictionary.new

    dictionary.add('Dog',
                   ['a domestic, meat-eating animal related to the wolf and fox',
                    'It is time to take the dog for a walk.'])

    expect(dictionary.get_definition('Dog')).to eq(['a domestic, meat-eating animal related to the wolf and fox',
                                                    'It is time to take the dog for a walk.'])
  end

  it 'gets # of words' do
    dictionary = Dictionary.new

    dictionary.add('Dog', '')
    dictionary.add('Bird', '')
    dictionary.add('Monkey', '')

    expect(dictionary.total_words).to eq(3)
  end

  it 'gets total # of definitions' do
    dictionary = Dictionary.new

    dictionary.add('Dog', ['Good Boyy'])
    dictionary.add('Bird', ['some definition', 'birb'])
    dictionary.add('Duck', ['Ducks r cool'])

    expect(dictionary.total_definitions).to eq(4)
  end
end
