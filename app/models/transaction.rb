class Transaction < ApplicationRecord

  STATUS = %w(BUY SELL).freeze

  after_save :set_cost

  def self.list_symbol
    all.map(&:symbol).uniq
  end

  def self.portfolios(hash_symbols, btc)
    list_symbol.map do |symbol|
      port(symbol, hash_symbols[symbol], btc.to_f)
    end
  end

  def self.port(symbol, price, btc)
    buy_transactions = where(symbol: symbol, status: "BUY")
    sell_transactions = where(symbol: symbol, status: "SELL")

    buy_volumn = buy_transactions.sum(:volumn)
    buy_cost = buy_transactions.sum(:cost)
    sell_volumn = sell_transactions.sum(:volumn)
    sell_cost = sell_transactions.sum(:cost)
    commission = buy_transactions.sum(:commission) + sell_transactions.sum(:commission)
    volumns = buy_volumn - sell_volumn
    market_value = volumns * price

    avg = if volumns == 0
      0
    else
      (buy_cost -  sell_cost) / volumns
    end
    cost = avg * volumns

    profit = if volumns == 0
      sell_cost - buy_cost
    else
      market_value - cost
    end

    percent = if volumns == 0
      0
    else
      (profit / cost) * 100
    end

    if symbol.last(3) == "BTC"
      avg = avg * btc
      cost = cost * btc
      market_value = market_value * btc
      profit = profit * btc
      commission = commission * btc
    end

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

  def self.symbols
    JSON.load Redis.current.get("symbols")
  end

private

  def set_cost
    update_columns(cost: (price * volumn) + commission)
  end

end
