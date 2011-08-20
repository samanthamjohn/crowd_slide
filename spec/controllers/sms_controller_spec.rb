require 'spec_helper'

describe SmsController do

  describe "#create" do

    def make_request
      post :create, { "Body" => "Foo", "From" => "Bar" }
    end
    it "makes a new sms" do
      # lambda { make_request }.should change(Sms.count)
      make_request
      sms = Sms.last
      sms.body.should == "Foo"
      sms.phone_number.should == "Bar"
    end

    it "returns head 200" do
      make_request
      response.should be_success
    end
  end
end
