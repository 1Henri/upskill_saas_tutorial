# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           =>  ENV['MAILGUN_SMTP_PORT'],
  :address        =>  ENV['MAILGUN_SMTP_SERVER'],
  :user_name      =>  ENV['MAILGUN_SMTP_LOGIN'],
  :password       =>  ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         =>  'warm-scrubland-14326.herokuapp.com',
  :authentication =>  :PLAIN,
}
ActionMailer::Base.delivery_method = :smtp