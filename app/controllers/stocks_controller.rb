class StocksController < ApplicationController


    def index 
        data = ApiData.get_list
        render json: data
    end






end
