
# Load the gem
# require 'intrinio-sdk'
# require 'pp'
require 'alphavantagerb'


class ApiData

#Setup authorization


test = IEX::Api::Client.new(
  publishable_token: "sk_d2b867d11ece40cc8010574e774074f0",
  endpoint: "https://cloud.iexapis.com/v1"
)
 

  def self.stock(stock_symbol)    
    client = Alphavantage::Client.new key: "V888PZNUNWFPPYH7"
    client.verbose = true
    client.stock(symbol: stock_symbol)
  end


  def self.stock_symbols
    ["AAPL", "MSFT", "SPY", "DAX"]
  end

  def self.get_list
    stock_lists = []

    self.stock_symbols.each { |symbol|
      resp = self.stock(symbol)
      stock_lists << resp.quote.output
    }

    stock_lists
  end


  def self.get_time_daily
    time = []

    self.stock_symbols.each { |symbol|
      resp = self.stock(symbol)
      time << resp.timeseries.output
    }

    time
  end


# 





end















