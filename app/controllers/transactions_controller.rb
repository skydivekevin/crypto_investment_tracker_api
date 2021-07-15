class TransactionsController < ApplicationController 
  include CurrentUserConcern

  def index
    @transactions = Transaction.where(user_id: @current_user.id)
    render json: { message: "Here's the session", user: @current_user, transactions: @transactions }
  end

  def create
    transaction = Transaction.create(
      user_id: @current_user.id, 
      coin: params['coin'], 
      cost_per_coin: params['cost_per_coin'],
      total_cost: params['total_cost'],
      total_coin: params['total_coin'],
      transaction_date: params['transaction_date']
     )
     if transaction 
      render json: { message: "new transaction ", transaction: transaction, success: true}

     else
      render json: {message: "new transaction fail ", error: transaction.errors.messages, success: false}
     end

  end

end

