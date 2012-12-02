# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Camera::Application.initialize!

Camera::Application.configure do
  # Mail Config
  config.action_mailer.delivery_method       = :smtp
  config.action_mailer.perform_deliveries    = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    :address              => Settings.smtp.address, 
    :port                 => Settings.smtp.port, 
    :domain               => Settings.smtp.domain, 
    :user_name            => Settings.smtp.user_name, 
    :password             => Settings.smtp.password, 
    :authentication       => 'plain', 
    :enable_starttls_auto => true  }
end

