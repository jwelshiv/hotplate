require 'spec_helper'

describe PagesController do

  describe "GET /" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

end
