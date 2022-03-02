# frozen_string_literal: true

class StockPortfolio
  def initialize(portfolio_content)
    @portfolio_content = portfolio_content
  end

  def check_portfolio(portfolio)
    portfolio
  end

  def get_stock_count(stock)
    portfolio_content[stock.to_sym]
  end

  attr_reader :portfolio_content
end
