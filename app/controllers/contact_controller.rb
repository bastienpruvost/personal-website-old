class ContactController < ApplicationController
 
  def new
    @message = Message.new
    @meta = { title: "Bastien Pruvost | Contact" }
  end
 
  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      ContactMailer.new_message(@message).deliver
      flash.now[:alert] = t "message.msg_envoye"
      render :new
    else
      flash.now[:alert] = t "message.msg_erreur"
      render :new
    end
  end
 
end
