[
  {
    date: "23/08/2017 19:57:48",
    symbol: "OMG/THB",
    status: "BUY",
    price: 272.81,
    volumn: 3.92330743,
    commission: 2.68
  },
  {
    date: "04/09/2017 17:35:52",
    symbol: "OMG/THB",
    status: "BUY",
    price: 320,
    volumn: 31.47112500,
    commission: 25.24
  },
  {
    date: "7/10/2017 20:51",
    symbol: "OMG/THB",
    status: "BUY",
    price: 284.61,
    volumn: 6,
    commission: 4.27
  },
  {
    date: "7/10/2017 20:51",
    symbol: "OMG/THB",
    status: "BUY",
    price: 284.61,
    volumn: 29.12506588,
    commission: 20.77
  },
  {
    date: "13/11/2017 19:33",
    symbol: "OMG/THB",
    status: "BUY",
    price: 254.8,
    volumn: 19.58127615,
    commission: 12.5
  },
  {
    date: "13/11/2017 19:48",
    symbol: "OMG/THB",
    status: "BUY",
    price: 256.99,
    volumn: 12.21464176,
    commission: 7.86
  },
  {
    date: "13/11/2017 19:48",
    symbol: "OMG/THB",
    status: "BUY",
    price: 257,
    volumn: 7.20051194,
    commission: 4.63
  },
  {
    date: "13/11/2017 19:48",
    symbol: "OMG/THB",
    status: "SELL",
    price: 298,
    volumn: 13.61929614,
    commission: 10.14
  },
  {
    date: "29/11/2017 23:20",
    symbol: "OMG/THB",
    status: "SELL",
    price: 298,
    volumn: 26.7080625,
    commission: 19.89
  },
  {
    date: "29/11/2017 23:30",
    symbol: "OMG/THB",
    status: "SELL",
    price: 298,
    volumn: 11.07773625,
    commission: 8.25
  },
  {
    date: "29/11/2017 23:32",
    symbol: "OMG/THB",
    status: "SELL",
    price: 298,
    volumn: 1.00419463,
    commission: 0.74
  },
  {
    date: "29/11/2017 23:34",
    symbol: "OMG/THB",
    status: "SELL",
    price: 298,
    volumn: 7.10663864,
    commission: 5.29
  },
  {
    date: "5/12/2017 22:01",
    symbol: "OMG/THB",
    status: "BUY",
    price: 338,
    volumn: 49.875,
    commission: 42.25
  },
  {
    date: "7/12/2017 19:37",
    symbol: "BTC/THB",
    status: "BUY",
    price: 538900,
    volumn: 0.01097746,
    commission: 14.82
  },
  {
    date: "7/12/2017 23:18",
    symbol: "BTC/THB",
    status: "BUY",
    price: 570000,
    volumn: 0.03509627,
    commission: 50.13
  },
  {
    date: "13/12/2017 20:21",
    symbol: "LTC/THB",
    status: "BUY",
    price: 10550,
    volumn: 0.9975,
    commission: 26.37
  },
  {
    date: "13/12/2017 20:22",
    symbol: "ETH/THB",
    status: "BUY",
    price: 22474,
    volumn: 0.11297305,
    commission: 6.36
  },
  {
    date: "13/12/2017 20:22",
    symbol: "ETH/THB",
    status: "BUY",
    price: 22475,
    volumn: 0.11271186,
    commission: 6.34
  },
  {
    date: "13/12/2017 20:22",
    symbol: "ETH/THB",
    status: "BUY",
    price: 22475,
    volumn: 0.00277833,
    commission: 0.15
  },
  {
    date: "13/12/2017 20:22",
    symbol: "ETH/THB",
    status: "BUY",
    price: 22475,
    volumn: 0.19508081,
    commission: 10.98
  },
  {
    date: "13/12/2017 20:22",
    symbol: "ETH/THB",
    status: "BUY",
    price: 22475,
    volumn: 0.19508081,
    commission: 10.98
  },
  {
    date: "16/12/2017 23:09",
    symbol: "ZEC/BTC",
    status: "BUY",
    price: 0.024,
    volumn: 0.00941808,
    commission: 0.00000056
  },
  {
    date: "16/12/2017 23:09",
    symbol: "ZEC/BTC",
    status: "BUY",
    price: 0.024,
    volumn: 0.02005772,
    commission: 0.00048139
  },
  {
    date: "16/12/2017 23:11",
    symbol: "ZEC/BTC",
    status: "BUY",
    price: 0.024,
    volumn: 0.20056266,
    commission: 0.00001206
  },
  {
    date: "16/12/2017 23:12",
    symbol: "ZEC/BTC",
    status: "BUY",
    price: 0.024,
    volumn: 0.76746154,
    commission: 0.00004616
  }
].each do |hash|
  Transaction.create(hash)
end
