class AddPortfolioIdToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :portfolio_id, :integer
  end
end
