class HomeController < ApplicationController
  def index
    @pic = Sms.last.photos.first
  end
end
