class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.float :commission
      t.float :cost
      t.float :price
      t.float :total
      t.float :volumn
      t.string :status
      t.string :symbol

      t.timestamps
    end
  end
end
