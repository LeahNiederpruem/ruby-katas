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
      described_class.new({ IBM: 12, AAPL: 1 })
    end

    it 'returns stock count of specific stock' do
      expect(portfolio.get_stock_count('AAPL')).to eq(1)
      expect(portfolio.get_stock_count('IBM')).to eq(12)
    end
  end
end
