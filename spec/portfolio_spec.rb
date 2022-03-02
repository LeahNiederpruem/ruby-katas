# frozen_string_literal: true

require 'portfolio'

RSpec.describe StockPortfolio do
  subject(:portfolio) { described_class.new }

  context 'with empty portfolio' do
    let(:portfolio) do
      described_class.new({})
    end

    it 'checks if portfolio is empty' do
      expect(portfolio.check_portfolio({})).to eq({})
    end
  end

  context 'with a filled portfolio' do
    let(:portfolio) do
      described_class.new({ IBM: 12, AAPL: 1, TSLA: 5 })
    end

    it 'returns stock count of portfolio' do
      expect(portfolio.stocks_count).to eq(3)
    end

    it 'returns shares count of specific stock' do
      expect(portfolio.shares_count('AAPL')).to eq(1)
      expect(portfolio.shares_count('IBM')).to eq(12)
    end

    it 'increases the shares by given number of specified stock (buy)' do
      expect(portfolio.buy_shares('AAPL', 10)).to eq({ IBM: 12, AAPL: 11, TSLA: 5 })
      expect(portfolio.buy_shares('IBM', 12)).to eq({ IBM: 24, AAPL: 11, TSLA: 5 })
    end

    it 'decreases the shares by given number of specified stock (sell)' do
      expect(portfolio.sell_shares('IBM', 2)).to eq({ IBM: 10, AAPL: 1, TSLA: 5 })
    end
  end
end
