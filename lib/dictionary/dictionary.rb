# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def definitions(word)
    content[word]
  end

  def add(word, definition = [])
    raise StandardError, 'Cannot store empty string or nil' if word.empty?

    return content[word] = [definition].flatten if content[word].nil?

    append(word, definition)
  end

  def append(word, definitions)
    content[word].append(definitions)
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

  def count_definitions(word)
    content[word].size
  end

  private

  attr_reader :content
end
