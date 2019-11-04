class ChannelsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "channel_#{params[:name]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
