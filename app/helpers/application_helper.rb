module ApplicationHelper

  def convert_thb(hash, btc_bth)
    bth = if hash["primary_currency"].eql?("BTC")
      hash["last_price"] * btc_bth
    else
      hash["last_price"]
    end
    number_to_currency(bth, precision: 2, unit: "฿")
  end
end
