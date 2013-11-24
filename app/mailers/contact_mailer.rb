class ContactMailer< ActionMailer::Base
 
  default :from => "contact@bastienpruvost.com"
  default :to => "bastien.pruvost@gmail.com"
 
  def new_message(message)
    @message = message
    mail(:subject => "[BP.com] #{message.subject}")
  end
 
end
