require 'spec_helper'

describe CalcController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST 'calculate'" do
    it "returns http success" do
      post :calculate, :expr1 => '1', :expr2 => '2', :action_operator => '+', :remote => true, :format => 'js'
      response.should be_success
      assigns(:result).should == 3
      expect(response).to render_template("calculate")
    end
  end

end
