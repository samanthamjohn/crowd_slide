class HomeController < ApplicationController
  def index
    @photos = Sms.last.photos
  end

  def latest
    @photos = Sms.last.photos
    render :partial => "photos", :locals => { :photos => @photos }
  end
end
