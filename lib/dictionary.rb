# frozen_string_literal: true

class Dictionary
  def initialize
    @content = Hash.new(0)
  end

  def get_definition(word)
    content[word]
  end

  def add(word, definition)
    return if word.empty?

    content[word] = definition
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
