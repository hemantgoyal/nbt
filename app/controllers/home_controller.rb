class HomeController < ApplicationController
  def index
        @all_pages = Refinery::Page.live.order("created_at DESC").all
        @top_pages = @all_pages[0..2]
        @bottom_pages = @all_pages.drop(3)
  end
end
