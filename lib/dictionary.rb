# frozen_string_literal: true

class Dictionary
  def initialize
    @content = {}
  end

  def add(symbol, definition)
    content[symbol] = definition
  end

  def empty?
    content.empty?
  end

  private

  attr_reader :content
end
