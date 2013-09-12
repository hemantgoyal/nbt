ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => "anbublacky@gmail.com",
    :password  => "zuIBeuAmFPo723ZowD7qeA", # SMTP password is any valid API key
    :authentication => 'plain', # Mandrill supports 'plain' or 'login'
    :domain => 'nabthat.com', # your domain to identify your server when connecting

}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?