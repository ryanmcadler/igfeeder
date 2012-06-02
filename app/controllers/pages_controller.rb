class PagesController < ApplicationController
  def index
    @tweets = Twitter.user_timeline("ryanmcadler").first(5)
  end
end
