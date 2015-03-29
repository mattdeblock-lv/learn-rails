Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: Rails.application.secrets.domain_name,
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: Rails.application.secrets.email_provider_username,
    password: Rails.application.secrets.email_provider_password
  }
  # ActionMailer Config
  config.action_mailer.default_url_options = { :host => 'localhost:3000' } 
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
    
 # Send email in development mode?
  config.action_mailer.perform_deliveries = true 
  config.action_mailer.default :charset => "utf-8"   
end



