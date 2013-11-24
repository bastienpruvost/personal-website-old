class ContactController < ApplicationController
 
  def new
    @message = Message.new
  end
 
  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      ContactMailer.new_message(@message).deliver
      flash.now[:alert] = "Message envoye. Je reviendrai vers vous des que possible."
      render :new
    else
      flash.now[:alert] = "Erreur. Merci de verifier que tous les champs sont remplis correctement."
      render :new
    end
  end
 
end
