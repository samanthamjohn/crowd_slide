class SmsController < ApplicationController

  def index
    @sms = Sms.all
  end

  def create
    sms = Sms.new(body: params["Body"], phone_number: params["From"])
    if sms.save
      head 200
    else
      head 422
    end
  end
end
