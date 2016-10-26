class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transaction, only: [:show]

  def create
    nonce = params[:payment_method_nonce]

    result = Braintree::Transaction.sale(
      :amount => params[:amount],
      :payment_method_nonce => nonce,
      :options => {
        :submit_for_settlement => true
      }
    )

    if result.success?
      @transaction = Transaction.create(total: params[:amount])
      flash[:success] = "Thank you for your purchase!"
      redirect_to transaction_path(@transaction)
    else
      flash[:warning] = "Unable to complete the transaction"
      redirect_to jerseys_path
    end
  end

  def show
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
