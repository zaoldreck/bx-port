class PortfoliosController < FrontController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    redirect_to action: :index
  end

  def show
    @hash_data = helpers.cache_data
    @hash_symbols = Transaction.symbols
    @btc_bth = @hash_symbols["BTC/THB"]
    @portfolio = Portfolio.find(params[:id])
    @transactions = @portfolio.transactions.portfolios(@hash_symbols, @btc_bth)
    @total_cost = @transactions.map { |transaction| transaction[:cost] }.sum
    @total_profit = @transactions.map { |transaction| transaction[:profit] }.sum
    @total_market = @transactions.map { |transaction| transaction[:market_value] }.sum
  end

private

  def portfolio_params
    params.require(:portfolio).permit(:slug)
  end
  
end
