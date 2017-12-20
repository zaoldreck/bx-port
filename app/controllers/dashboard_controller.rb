class DashboardController < FrontController

  def index
    response = HTTParty.get("https://bx.in.th/api/")
    @hash_data = JSON.parse(response.body)
    @btc_bth = @hash_data["1"]["last_price"]
    @transaction = Transaction.port("OMG", 650)
  end

end
