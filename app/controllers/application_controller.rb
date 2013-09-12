class ApplicationController < ActionController::Base
  protect_from_forgery
  
    def default_url_options
    if Rails.env.production?
      {:host => "nabthat.com:3000"}
    else  
      {}
    end
  end
  
end
