class SmsController < ApplicationController

  def index
    @sms = Sms.all
  end

  def create
    sms = Sms.new(body: params["Body"], phone_number: params["From"])
    sms.save!
  end
end
