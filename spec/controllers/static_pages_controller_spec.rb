require 'spec_helper'

describe StaticPagesController do

  describe "GET 'other'" do
    it "returns http success" do
      get 'other'
      response.should be_success
    end
  end

end
