class HomeController < ApplicationController
  def index
    @photos = Sms.last.photos
  end
end
