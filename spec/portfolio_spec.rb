# frozen_string_literal: true

require 'portfolio'

RSpec.describe StockPortfolio do
  subject(:portfolio) { described_class.new }

  empty_portfolio = {}

  filled_portfolio = { IBM: 12, AAPL: 1 }

  it 'checks if portfolio is empty' do
    expect(portfolio.check_portfolio(empty_portfolio)).to eq(empty_portfolio)
  end

  it 'checks if portfolio is NOT empty' do
    expect(portfolio.check_portfolio(filled_portfolio)).to eq(filled_portfolio)
  end
end
