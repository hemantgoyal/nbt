class ApplicationController < ActionController::Base
  protect_from_forgery
  
    def default_url_options
    if Rails.env.production?
      {:host => "nabthat.com:3000"}
    else  
      {}
    end
  end
  
  def signed_in_root_path(scope_or_resource)
    dashboard_dealer_path
  end

  
end
