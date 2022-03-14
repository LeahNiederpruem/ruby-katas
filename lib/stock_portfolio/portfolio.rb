# frozen_string_literal: true

class StockPortfolio
  def initialize
    @stocks = Hash.new(0)
  end

  def count(symbol)
    stocks[symbol]
  end

  def purchase(symbol, number)
    stocks[symbol] = number
  end

  def sell(symbol, number)
    stocks[symbol] = stocks[symbol] - number
  end

  def stock_count
    stocks.keys.size
  end

  def empty?
    stocks.empty?
  end

  private

  attr_reader :stocks
end
