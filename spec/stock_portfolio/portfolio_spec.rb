# frozen_string_literal: true

require './lib/stock_portfolio/portfolio'

RSpec.describe StockPortfolio do
  it 'is initial empty' do
    portfolio = StockPortfolio.new

    expect(portfolio).to be_empty
  end

  it 'is not empty after purchase' do
    portfolio = StockPortfolio.new

    portfolio.purchase('IBM', 10)

    expect(portfolio).not_to be_empty
  end

  it 'defaults to zero for unpurchased stocks' do
    portfolio = StockPortfolio.new

    expect(portfolio.count('IBM')).to eq(0)
  end

  it 'enables to purchase shares' do
    portfolio = StockPortfolio.new

    portfolio.purchase('IBM', 10)
    portfolio.purchase('AAPL', 15)

    expect(portfolio.count('IBM')).to eq(10)
    expect(portfolio.count('AAPL')).to eq(15)
  end

  it 'returns the count of stocks' do
    portfolio = StockPortfolio.new

    portfolio.purchase('IBM', 10)
    portfolio.purchase('AAPL', 15)

    expect(portfolio.stock_count).to eq(2)
  end

  it 'returns the count of stocks of empty portfolio' do
    portfolio = StockPortfolio.new

    expect(portfolio.stock_count).to eq(0)
  end

  it 'sells given amout of shares of specified stock' do
    portfolio = StockPortfolio.new

    portfolio.purchase('AAPL', 15)

    expect { portfolio.sell('AAPL', 5) }.to change { portfolio.count('AAPL') }.from(15).to(10)
  end
end
