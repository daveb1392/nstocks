class StocksController < ApplicationController

    def index 
        data = ApiData.get_list
        render json: data
    end


    def get_time_series
        time = ApiData.get_time_daily
        render json: time 
    end






end
