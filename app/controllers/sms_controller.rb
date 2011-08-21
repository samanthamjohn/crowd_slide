class SmsController < ApplicationController

  def index
    @sms = Sms.all
  end

  def create
    sms = Sms.new(body: params["Body"], phone_number: params["From"])
    if sms.save
      TWILIO_ACCOUNT.sms.messages.create({
        :from => '+12159874639',
        :to => sms.phone_number,
        :body => "Thanks for texting crowdframe! Your keyword '#{sms.body}' will appear shortly. "
      })
      head 200
    else
      TWILIO_ACCOUNT.sms.messages.create({
        :from => '+12159874639',
        :to => sms.phone_number,
        :body => "Thanks for texting crowdframe. Unfortunately your keyword '#{sms.body}' did not match any photos, try again! "
      })
      head 422
    end
  end
end
