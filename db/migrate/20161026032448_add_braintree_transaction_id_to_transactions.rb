class AddBraintreeTransactionIdToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :braintree_transaction_id, :string
  end
end
