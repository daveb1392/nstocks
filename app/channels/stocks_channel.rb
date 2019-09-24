class StocksChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # stock = 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
