module DashboardHelper
  def cache_data
    # $cache.fetch("data", expires_in: 10) do
      response = HTTParty.get("https://bx.in.th/api/")
      hash = JSON.parse(response.body)
      hash_symbol = {}
      hash.each do |key, value|
        symbol = "#{value['secondary_currency']}/#{value['primary_currency']}"
        price = value["last_price"]
        hash_symbol[symbol] = price
      end
      Redis.current.set("symbols", hash_symbol.to_json)
      hash
    # end
  end
end
