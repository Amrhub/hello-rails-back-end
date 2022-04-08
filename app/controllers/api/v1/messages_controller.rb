class Api::V1::MessagesController < ApplicationController
  def random_message
    @message = Message.all.sample
    render :json => @message
  end
end
