class StocksSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id
  # attribute :name do |object|
  #   "#{object"}"
{id: stock["01. symbol"], 
  open: stock["02. open"], 
  high: stock["03. high"], 
  low: stock["04. low"], 
  price: stock["05. price"], 
  volume: stock["06. volume"], 
  latest_trading: stock["0.7 latest trading day"], 
  previous_close: stock["08. previous close"], 
  change: stock["09. change"], 
  change_pc: stock["10. change percent"]}

end
