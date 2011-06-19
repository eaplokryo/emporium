raw_config = File.read("#{Rails.root}/config/smtp_config.yml")
SMTP_CONFIG = YAML.load(raw_config)[Rails.env].symbolize_keys

ActionMailer::Base.smtp_settings = {
  :address => SMTP_CONFIG[:address],
  :port => SMTP_CONFIG[:port],
  :domain => SMTP_CONFIG[:domain],
  :user_name => SMTP_CONFIG[:user_name],
  :password => SMTP_CONFIG[:password],
  :authentication => SMTP_CONFIG[:authentication].to_sym,
  :enable_starttls_auto => true
}
