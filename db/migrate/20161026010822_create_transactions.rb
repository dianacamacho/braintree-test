class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
