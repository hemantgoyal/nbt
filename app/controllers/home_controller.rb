class HomeController < ApplicationController
  def index
        @pages = Refinery::Page.live
  end
end
