# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def word(word)
    word
  end

  def add(word)
    content[word] = ''
  end

  def empty?
    content.empty?
  end

  private

  attr_reader :content
end
