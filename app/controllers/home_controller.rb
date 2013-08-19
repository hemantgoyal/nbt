class HomeController < ApplicationController
  def index
        @pages = Refinery::Page.live.order("created_at DESC").limit(3)
  end
end
