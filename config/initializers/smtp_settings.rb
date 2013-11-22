ActionMailer::Base.smtp_settings = {
  :address => ENV["mail_address"],
  :port => 587,
  :domain => "bastienpruvost.com",
  :user_name => ENV["mail_username"],
  :password => ENV["mail_password"],
  :authentication => "plain"
}