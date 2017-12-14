class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :type
      t.float :rate
      t.float :volumn
      t.float :total
      t.float :commistion

      t.timestamps
    end
  end
end
