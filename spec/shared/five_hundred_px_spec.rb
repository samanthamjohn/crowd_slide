require 'spec_helper'

describe FiveHundredPx do

  describe ".search" do
    it "should return the search results" do
      res = FiveHundredPx.search("foo")
      res.should include("foo")
    end
  end

end
