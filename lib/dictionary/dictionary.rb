# frozen_string_literal: true

class EmptyWordError < StandardError
  def initialize(msg = 'Cannot store empty string or nil.')
    super
  end
end

class Dictionary
  def initialize
    @content = {}
  end

  def definitions(word)
    content[word]
  end

  def add(word, definition = [])
    raise EmptyWordError if word.empty?

    return content[word] = [definition].flatten if content[word].nil?

    content[word].append(definition)
  end

  def empty?
    content.empty?
  end

  def delete(word)
    content.delete(word)
  end

  def remove_definition(word, definition)
    content[word].delete(definition)

    content[word]
  end

  def total_number_of_words
    content.keys.size
  end

  def total_number_of_definitions
    content.values.flatten.size
  end

  def count_definitions_of_word(word)
    content[word].size
  end

  private

  attr_reader :content
end
