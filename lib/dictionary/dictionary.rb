# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def definition(word)
    content[word]
  end

  def add(word, definition = '')
    content[word] = definition
  end

  def empty?
    content.empty?
  end

  private

  attr_reader :content
end
