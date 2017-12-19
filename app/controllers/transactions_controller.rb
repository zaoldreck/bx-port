class TransactionsController < FrontController

  before_action :set_transaction, only: %i(edit update destroy)

  def index
    @transactions = Transaction.all
    @transaction = Transaction.new
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.create(transaction_params)
    redirect_to action: :index
  end

  def edit; end

  def update
    if @transaction.update(transaction_params)
      flash[:success] = "Update success."
    else
      flash[:error] = "Update error."
    end
    redirect_to action: :index
  end

  def destroy
    if @transaction.destroy
      flash[:success] = "Delete success."
    else
      flash[:error] = "Delete error."
    end
    redirect_to action: :index
  end

private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(
      :commission,
      :price,
      :date,
      :status,
      :symbol,
      :volumn
    )
  end

end
