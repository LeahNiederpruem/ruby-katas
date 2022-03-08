# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def definition(word)
    content[word]&.flatten
  end

  def add(word, definition)
    raise 'Cannot store empty string' if word.empty?

    content[word] = definition
  end

  def delete(word)
    content.delete(word)
  end

  def append(word, definition)
    content[word].append(definition)
  end

  def total_words
    content.keys.size
  end

  def total_definitions
    content.values.flatten.size
  end

  def empty?
    content.empty?
  end

  private

  attr_reader :content
end
