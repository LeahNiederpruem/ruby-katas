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
end
