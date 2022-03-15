# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def definitions(word)
    content[word]
  end

  def add(word, definition = [])
    content[word] = definition
  end

  def append(word, definitions)
    content[word].append(definitions)
  end

  def empty?
    content.empty?
  end

  private

  attr_reader :content
end
