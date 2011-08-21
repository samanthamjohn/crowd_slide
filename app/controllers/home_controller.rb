class HomeController < ApplicationController
  def index
    sms = Sms.last
    @photos = sms.photos
    sms.update_attribute(:displayed, true)
  end

  def latest
    sms = Sms.undisplayed.last || Sms.first(:order => "random()")
    photos = sms.photos
    sms.update_attribute(:displayed, true)
    render :partial => "photos", :locals => { :photos => photos }
  end
end
