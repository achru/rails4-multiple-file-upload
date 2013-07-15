dev_opt = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "jardimdeofertas.com.br",
  :user_name            => "jardim.de.ofertas",
  :password             => "bqik8grd",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

prod =  {
  :address => 'localhost',
  :domain => 'gear7.com.br',
  :port => 25,
  :openssl_verify_mode => 'none'
}

if Rails.env == "production"
  server = ActionMailer::Base.smtp_settings = prod
else 
  server = ActionMailer::Base.smtp_settings = dev_opt
end

Mail.defaults do
  delivery_method :smtp, server
end