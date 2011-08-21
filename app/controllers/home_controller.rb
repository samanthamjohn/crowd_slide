require 'thread'
Thread.abort_on_exception = true

class HomeController < ApplicationController
  def index
    get_photos
  end

  def latest
    get_photos
    render :partial => "photos", :locals => { :photos => @photos, :keyword => @keyword }
  end

  def get_photos
    sms = Sms.undisplayed.last
    if sms
      sms.update_attribute(:displayed, true)
    else
      sms = Sms.first(:order => "random()")
    end
    @photos = sms.photos
    @keyword = sms.body
  end
end
