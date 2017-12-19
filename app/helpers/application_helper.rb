module ApplicationHelper

  def convert_thb(hash, btc_bth)
    bth = if hash["primary_currency"].eql?("BTC")
      hash["last_price"] * btc_bth
    else
      hash["last_price"]
    end
    number_to_currency(bth, precision: 2, unit: "฿")
  end

  def nav_tab(body, path)
    content_tag :li, class: ("active" if current_page?(path)) do
      link_to path, data: { turbolinks: false } do
        concat body
      end
    end
  end

end
