class MessagesController < ApplicationController

  
  def create
  	@message = Message.new
    @message.title = params[:message][:title]
    @message.name = params[:message][:name]
    @message.body = params[:message][:body]
  
    @message.save
    redirect_to "/messages/index"
  end

  def index
    @messages = Message.all
  	@messages = Message.message_list
    @message = Message.new
  end

  def show
  end

  def new
  end

end
