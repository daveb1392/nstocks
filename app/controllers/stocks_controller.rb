class StocksController < ApplicationController

    def index 
        data = ApiData.get_list
        new_data = data.map { |d| d["Global Quote"] }
        data_new = new_data.map do |stock|
            { id: stock["01. symbol"],
                open: stock["02. open"],
                high: stock["03. high"],
                low: stock["04. low"],
                price: stock["05. price"],
                volume: stock["06. volume"],
                latest_trading: stock["07. latest trading day"],
                previous_close: stock["08. previous close"],
                change: stock["09. change"],
                change_pc: stock["10. change percent"] }
            end
        render json: data_new
    end


    def get_time_series
        time = ApiData.get_time_daily

        render json: time 
    end
# what if I get five api call an use them. 





end
