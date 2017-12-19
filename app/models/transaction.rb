class Transaction < ApplicationRecord

  STATUS = %w(BUY SELL).freeze

  after_save :set_cost

private

  def set_cost
    update_columns(cost: (price * volumn) + commission)
  end

end
