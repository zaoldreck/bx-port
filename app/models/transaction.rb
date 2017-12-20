class Transaction < ApplicationRecord

  STATUS = %w(BUY SELL).freeze

  after_save :set_cost

  def self.list_symbol
    all.map(&:symbol).uniq
  end

  def self.portfolios
    list_symbol.each do |symbol|

    end
  end

  def self.port(symbol, price)
    buy_transactions = where(symbol: symbol, status: "BUY")
    sell_transactions = where(symbol: symbol, status: "SELL")

    buy_volumn = buy_transactions.sum(:volumn)
    buy_cost = buy_transactions.sum(:cost)
    sell_volumn = sell_transactions.sum(:volumn)
    sell_cost = sell_transactions.sum(:cost)
    commission = buy_transactions.sum(:volumn) + sell_transactions.sum(:commission)
    volumns = buy_volumn - sell_volumn
    market_value = volumns * price
    avg = (buy_cost - sell_cost) / volumns
    cost = avg * volumns
    profit = market_value - cost
    percent = (profit / cost) * 100

    {
      avg: avg,
      commission: commission,
      cost: cost,
      market_value: market_value,
      percent: percent,
      profit: profit,
      symbol: symbol,
      volumns: volumns
    }
  end

private

  def set_cost
    update_columns(cost: (price * volumn) + commission)
  end

end
