class DashboardController < FrontController

  def index
    load_date
  end

private

  def load_date
    response = HTTParty.get("https://bx.in.th/api/")
    @hash_data = JSON.parse(response.body)
  end

end
