class HomeController < ApplicationController
  def index
    sms = Sms.last
    @photos = sms.photos
    @keyword = sms.body
    sms.update_attribute(:displayed, true)
  end

  def latest
    sms = Sms.undisplayed.last || Sms.first(:order => "random()")
    sms.update_attribute(:displayed, true)
    render :partial => "photos", :locals => { :photos => sms.photos, :keyword => sms.body }
  end
end
