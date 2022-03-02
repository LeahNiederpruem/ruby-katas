# frozen_string_literal: true

class StockPortfolio
  def initialize(portfolio_content)
    @portfolio_content = portfolio_content
  end

  def check_portfolio(portfolio)
    portfolio
  end

  def stocks_count
    portfolio_content.length
  end

  def shares_count(stock)
    portfolio_content[stock.to_sym]
  end

  def buy_shares(stock, shares)
    portfolio_content[stock.to_sym] = portfolio_content[stock.to_sym] + shares

    portfolio_content
  end

  def sell_shares(stock, shares)
    portfolio_content[stock.to_sym] = portfolio_content[stock.to_sym] - shares

    return 'You do not have that many shares to sell.' if portfolio_content[stock.to_sym].negative?

    portfolio_content
  end

  attr_reader :portfolio_content
end
