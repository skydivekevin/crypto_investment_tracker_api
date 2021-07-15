class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :coin
      t.decimal :cost_per_coin
      t.decimal :total_cost
      t.decimal :total_coin
      t.date :transaction_date
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
