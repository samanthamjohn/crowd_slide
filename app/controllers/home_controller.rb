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
      TWILIO_ACCOUNT.sms.messages.create({
        :from => '+12159874639',
        :to => sms.phone_number,
        :body => "Your keyword '#{sms.body}' is about to appear, look up! "
      })
      sms.update_attribute(:displayed, true)
    else
      sms = Sms.first(:order => "random()")
    end
    @photos = sms.photos
    @keyword = sms.body
  end
end
