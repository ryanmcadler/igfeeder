class PagesController < ApplicationController
  def index
    @tweets = Twitter.user_timeline(Igfeeder::Application::TWITTER_HANDLE).first(5)
    @instagramfeed = Instagram.user_recent_media(Igfeeder::Application::INSTAGRAM_USER_ID)
  end
end
