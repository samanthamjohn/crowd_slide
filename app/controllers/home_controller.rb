class HomeController < ApplicationController
  def index
    @pic = FiveHundredPx.search(Sms.last.body).first
  end
end
