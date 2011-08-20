require 'spec_helper'

describe FiveHundredPx do

  describe ".search" do
    it "should return the search results" do
      put "Warning- this test hits a live api"
      res = FiveHundredPx.search("foo")
      res.should be
    end
  end

end
