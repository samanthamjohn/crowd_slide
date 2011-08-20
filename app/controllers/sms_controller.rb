class SmsController < ApplicationController

  def index
    @sms = Sms.all
  end

  def create

  end
end
