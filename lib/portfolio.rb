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

  def shares_count(company)
    portfolio_content[company.to_sym]
  end

  def buy_shares(company, shares)
    portfolio_content[company.to_sym] = portfolio_content[company.to_sym] + shares

    portfolio_content
  end

  attr_reader :portfolio_content
end
