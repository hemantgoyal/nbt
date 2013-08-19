class HomeController < ApplicationController
  def index
        @pages = Refinery::Page.live.limit(3)
  end
end
